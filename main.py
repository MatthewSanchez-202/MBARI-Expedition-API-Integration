from flask import Flask, jsonify , request , json
import pyodbc
from flask_swagger_ui import get_swaggerui_blueprint 
from flask import Flask, url_for, session 
from flask import render_template, redirect
from authlib.integrations.flask_client import OAuth
from flask_login import LoginManager , login_required ,login_user  , logout_user , UserMixin    
import requests
from functools import wraps
app = Flask(__name__)

app.secret_key = '!secret'
app.config.from_object('config')
oauth = OAuth(app)
login_manager = LoginManager()
login_manager.init_app(app)

SERVER = 'localhost'
DATABASE = 'MBARI'
USERNAME = 'SA'
PASSWORD = 'Santano831!'
URL = "http://127.0.0.1:5000"
# Define the connection string
connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'


#SWAGGER
SWAGGER_URL = '/api/docs'  # URL for exposing Swagger UI
API_URL = '/static/swagger.json'  # Our API url (can of course be a local resource)

# Call factory function to create our blueprint
swaggerui_blueprint = get_swaggerui_blueprint(
    SWAGGER_URL,  # Swagger UI static files will be mapped to '{SWAGGER_URL}/dist/'
    API_URL,
    config={  # Swagger UI config overrides
        'app_name': "Test application"
    },
     oauth_config={  # OAuth config. See https://github.com/swagger-api/swagger-ui#oauth2-configuration .
    #    'clientId': "your-client-id",
    #    'clientSecret': "your-client-secret-if-required",
    #    'realm': "your-realms",
    #    'appName': "your-app-name",
    #    'scopeSeparator': " ",
    #    'additionalQueryStringParams': {'test': "hello"}
     }
)
app.register_blueprint(swaggerui_blueprint)

#Google OAuth 2.0
CONF_URL = 'https://accounts.google.com/.well-known/openid-configuration'
oauth = OAuth(app)
oauth.register(
    name='google',
    server_metadata_url=CONF_URL,
    client_kwargs={
        'scope': 'openid profile email '
    }
)
def isAuthorized_dec(func):
    @wraps(func)
    def wrapper_func(*args, **kwargs):
        try:
            connection = pyodbc.connect(connectionString)
            cursor = connection.cursor()
            cursor.execute("SELECT * FROM Users WHERE userEmail = ?", (str(session['user']),))
            user_data = cursor.fetchone()
            cursor.close()
            connection.close()
            user = User(user_data[0], user_data[1], user_data[2]) 
            if user.typeOfUser == "admin":
                return func(*args, **kwargs)
        except Exception as e:
            return "Error: " + str(e)
        
        return "Not Authorized"
    
    return wrapper_func

@app.route('/testIn')
def test_login():
    session['user'] = 'admin'
    connection = pyodbc.connect(connectionString)
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Users WHERE userEmail = ?", (str(session['user'])))
    user_data = cursor.fetchone()
    cursor.close()
    connection.close()
    user = User(user_data[0] , user_data[1] ,user_data[2]) 
    login_user(user)
    return jsonify("Logged In"), 200

@app.route('/testOut')
@login_required
def test_logout():
    logout_user()
    session.pop('user', None)
    return jsonify("Logged Out"), 200


@app.route('/')
def homepage():
    user = session.get('user')
    return render_template('home.html', user=user)


@app.route('/login')
def login():
    redirect_uri = url_for('auth', _external=True)
    return oauth.google.authorize_redirect(redirect_uri)


@app.route('/auth')
def auth():
    token = oauth.google.authorize_access_token()
    userinfo = token['userinfo']   
    session['user'] = userinfo['email']
    data = {"userEmail": str(session['user'])}
    requests.post(f'{URL}/post/newUser',json=data)
    connection = pyodbc.connect(connectionString)
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Users WHERE userEmail = ?", (str(session['user'])))
    user_data = cursor.fetchone()
    cursor.close()
    connection.close()
    user = User(user_data[0] , user_data[1] ,user_data[2]) 
    login_user(user)
    redirect_url = url_for('homepage', _external=True) 
    return redirect(redirect_url)


@app.route('/logout')
@login_required
def logout():
    logout_user()
    session.pop('user', None)
    return redirect('/')


@login_manager.user_loader
def load_user(user_id):
    connection = pyodbc.connect(connectionString)
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Users WHERE userID = ?", (user_id,))
    user_data = cursor.fetchone()
    cursor.close()
    connection.close()
    
    if user_data:
        user = User(user_data[0], user_data[1], user_data[2])
        return user
    else:
        return None

class User(UserMixin):
    def __init__(self, user_id, email, typeOfUser):
        self.id = user_id
        self.email = email
        self.typeOfUser = typeOfUser

    
@app.route('/get-all-expeditions', methods=['GET'])
@login_required
def get_all_expeditions():
    sort_field = request.args.get('sortfield', default='ExpeditionID', type=str)
    sort_order = request.args.get('sortorder', default='asc', type=str).upper()
    ship_name = request.args.get('shipname', default=None)
    start_date = request.args.get('startdate', default=None)
    end_date = request.args.get('enddate', default=None)
    year = request.args.get('year', default=None)

    valid_sort_fields = ['ExpeditionID', 'ShipName','StartDtg', 'EndDtg']
    if sort_field not in valid_sort_fields:
        return jsonify({'error': 'Invalid sort field'}), 400
    if sort_order not in ['ASC', 'DESC']:
        return jsonify({'error': 'Invalid sort order'}), 400

    conditions = []
    if ship_name:
        conditions.append(f"ShipName = '{ship_name}'")

    if year:
        
        conditions.append(f"(YEAR(StartDtg) = {year} OR YEAR(EndDtg) = {year})")
    else:
        
        if start_date:
            conditions.append(f"StartDtg >= '{start_date}'")
        if end_date:
            conditions.append(f"EndDtg <= '{end_date}'")

    query = "SELECT * FROM Expedition"
    if conditions:
        query += " WHERE " + " AND ".join(conditions)
    query += f" ORDER BY [{sort_field}] {sort_order}"

    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute(query)
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            expeditions = [dict(zip(columns, row)) for row in rows]
            return jsonify(expeditions)
    except pyodbc.Error as e:
        return jsonify({'error': str(e)}), 500
    except Exception as e:
        return jsonify({'error': 'Internal server error'}), 500

 # filtering sort order and sort field 
@app.route('/get-all-dives', methods=['GET'])
@login_required
def get_all_dives():
    sort_field = request.args.get('sortfield', default='DiveID', type=str)
    sort_order = request.args.get('sortorder', default='asc', type=str).upper()
    rov_name = request.args.get('rovname', default=None)
    start_date = request.args.get('startdate', default=None)
    end_date = request.args.get('enddate', default=None)
    year = request.args.get('year', default=None)  

    valid_sort_fields = ['DiveID', 'DiveStartDtg', 'DiveEndDtg' , 'DiveNumber', 'RovName']
    if sort_field not in valid_sort_fields:
        return jsonify({'error': 'Invalid sort field'}), 400
    if sort_order not in ['ASC', 'DESC']:
        return jsonify({'error': 'Invalid sort order'}), 400

    conditions = []
    if rov_name:
        conditions.append(f"RovName = '{rov_name}'")

    
    if year:
        start_year_date = f"{year}-01-01"
        end_year_date = f"{year}-12-31"
        conditions.append(f"DiveStartDtg >= '{start_year_date}'")
        conditions.append(f"DiveEndDtg <= '{end_year_date}'")
    else:
        if start_date:
            conditions.append(f"DiveStartDtg >= '{start_date}'")
        if end_date:
            conditions.append(f"DiveEndDtg <= '{end_date}'")

    query = "SELECT * FROM Dive"
    if conditions:
        query += " WHERE " + " AND ".join(conditions)
    query += f" ORDER BY [{sort_field}] {sort_order}"

    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute(query)
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            dives = [dict(zip(columns, row)) for row in rows]
            return jsonify(dives)
    except Exception as e:
        return jsonify({'error': 'Internal server error'}), 500


@app.route("/post/newUser", methods=['POST'])
def create_user():
    try:
        data = request.json
        userEmail = data['userEmail']
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()
        cursor.execute("SELECT COUNT(*) FROM Users WHERE userEmail = ?", (userEmail))
        row_count = cursor.fetchone()[0]
        if row_count == 1:
            return jsonify({'message': 'User Already Exists '}), 200


        create_query = f"INSERT INTO Users (userEmail, typeOfUser) VALUES (?, ?)"
        cursor.execute(create_query, (userEmail, "user"))
        connection.commit()
        cursor.close()
        connection.close()
        
        return jsonify({'message': 'Created new user successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/update/Expedition/<int:expedition_id>', methods=['PUT'])
@isAuthorized_dec
@login_required
def updateExpedition_data(expedition_id):
    try:
        
        data = request.json
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()
        cursor.execute("SELECT COUNT(*) FROM Expedition WHERE ExpeditionID = ?", (expedition_id))
        row_count = cursor.fetchone()[0]
        if row_count == 0:
            return jsonify({'error': 'Invalid expedition_id '}), 400
        
        
        columns = []
        valueForColumn = []

        #Go Through json body(data) and append column name and the column updated data
        for colName, newValue in data.items():
            # Same as DatetimeGMT = ?
            columns.append(f"{colName} = ?")
            valueForColumn.append(newValue)

        valueForColumn.append(expedition_id)
        columnsToUpdate = ","
        columnsToUpdate = columnsToUpdate.join(columns)

        # Construct the update query dynamically
        update_query = f"UPDATE Expedition SET {columnsToUpdate} WHERE ExpeditionID = ?"

        cursor.execute(update_query, valueForColumn)
        connection.commit()

        cursor.close()
        connection.close()

        return jsonify({'message': ' Expedition Table Data updated successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    
@app.route('/update/Dive/<int:dive_id>', methods=['PUT'])
@isAuthorized_dec
@login_required
def updateDive_data(dive_id):
    try:
        
        data = request.json
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()

        # Check if expedition_id exists in the database
        cursor.execute("SELECT COUNT(*) FROM Dive WHERE DiveID = ?", (dive_id))
        row_count = cursor.fetchone()[0]
        if row_count == 0:
            return jsonify({'error': 'Invalid expedition_id '}), 400
        
        
        columns = []
        valueForColumn = []

        #Go Through json body(data) and append column name and the column updated data
        for colName, newValue in data.items():
            #Same as DatetimeGMT = ?
            columns.append(f"{colName} = ?")
            valueForColumn.append(newValue)

        valueForColumn.append(dive_id)
        columnsToUpdate = ","
        columnsToUpdate = columnsToUpdate.join(columns)

        update_query = f"UPDATE Dive SET {columnsToUpdate} WHERE DiveID = ?"

        cursor.execute(update_query, valueForColumn)
        connection.commit()

        cursor.close()
        connection.close()

        
        return jsonify({'message': 'Dive table Data updated successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500


# Create Expedition POST API
@app.route("/post/create_expedition", methods=['POST'])
@isAuthorized_dec
@login_required
def create_Expedition():
    try:
        data = request.json
        
        ExpeditionID = data['ExpeditionID']
        DeviceID = data['DeviceID']
        ShipName = data['ShipName']
        ShipSeqNum = data['ShipSeqNum']
        Purpose = data['Purpose']
        StatCode = data['StatCode']
        ExpdChiefScientist = data['ExpdChiefScientist']
        ExpdPrincipalInvestigator = data['ExpdPrincipalInvestigator']
        ScheduledStartDtg = data['ScheduledStartDtg']
        ScheduledEndDtg = data['ScheduledEndDtg']
        EquipmentDesc = data['EquipmentDesc']
        Participants = data['Participants']
        RegionDesc = data['RegionDesc']
        PlannedTrackDesc = data['PlannedTrackDesc']
        StartDtg = data['StartDtg']
        EndDtg = data['EndDtg']
        Accomplishments = data['Accomplishments']
        ScientistComments = data['ScientistComments']
        SciObjectivesMet = data['SciObjectivesMet']
        OperatorComments = data['OperatorComments']
        AllEquipmentFunctioned = data['AllEquipmentFunctioned']
        OtherComments = data['OtherComments']
        UpdatedBy = data['UpdatedBy']
        ismodified = data['ismodified']

        connection = pyodbc.connect(connectionString)

        cursor = connection.cursor()

        create_query = f"INSERT INTO Expedition (ExpeditionID, DeviceID, ShipName, ShipSeqNum, Purpose, StatCode, ExpdChiefScientist, ExpdPrincipalInvestigator, ScheduledStartDtg, ScheduledEndDtg, EquipmentDesc, Participants, RegionDesc, PlannedTrackDesc, StartDtg, EndDtg, Accomplishments, ScientistComments, SciObjectivesMet, OperatorComments, AllEquipmentFunctioned, OtherComments, UpdatedBy, ismodified) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"
        cursor.execute(create_query, (ExpeditionID, DeviceID, ShipName, ShipSeqNum, Purpose, StatCode, ExpdChiefScientist, ExpdPrincipalInvestigator, ScheduledStartDtg, ScheduledEndDtg, EquipmentDesc, Participants, RegionDesc, PlannedTrackDesc, StartDtg, EndDtg, Accomplishments, ScientistComments, SciObjectivesMet, OperatorComments, AllEquipmentFunctioned, OtherComments, UpdatedBy, ismodified))

        connection.commit()
        cursor.close()
        connection.close()

        return jsonify({'message': 'Created new expedition successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

#Create Dive Post API
@app.route("/post/create_dive", methods=['POST'])
@isAuthorized_dec
@login_required
def create_dive():
    try:
        data = request.json

        DiveID = data['DiveID']
        DeviceID = data['DeviceID']
        RovName = data['RovName']
        DiveNumber = data['DiveNumber']
        ExpeditionID_FK = data['ExpeditionID_FK']
        DiveStartDtg = data['DiveStartDtg']
        DiveEndDtg = data['DiveEndDtg']
        DiveChiefScientist = data['DiveChiefScientist']
        BriefAccomplishments = data['BriefAccomplishments']
        DiveStartTimecode = data['DiveStartTimecode']
        DiveEndTimecode = data['DiveEndTimecode']
        DiveLatMid = data['DiveLatMid']
        DiveLonMid = data['DiveLonMid']
        DiveDepthMid = data['DiveDepthMid']

        connection = pyodbc.connect(connectionString)

        cursor = connection.cursor()

        create_query = f"INSERT INTO Dive (DiveID, DeviceID, RovName, DiveNumber, ExpeditionID_FK, DiveStartDtg, DiveEndDtg, DiveChiefScientist, BriefAccomplishments, DiveStartTimecode, DiveEndTimecode, DiveLatMid, DiveLonMid, DiveDepthMid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
        cursor.execute(create_query, (DiveID, DeviceID, RovName, DiveNumber, ExpeditionID_FK, DiveStartDtg, DiveEndDtg, DiveChiefScientist, BriefAccomplishments, DiveStartTimecode, DiveEndTimecode, DiveLatMid, DiveLonMid, DiveDepthMid))

        connection.commit()
        cursor.close()
        connection.close()
        
        return jsonify({'message': 'Created new dive successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500



@app.route('/getExpedition/<int:id>', methods=['GET'])
@login_required
def get_by_id_expedition(id):
    try:
        
        connection = pyodbc.connect(connectionString)
        
        cursor = connection.cursor()
        
        select_query = f"SELECT * FROM Expedition WHERE ExpeditionID = ? "
        cursor.execute(select_query, id)
        
        columns = [column[0] for column in cursor.description]
        results = []
        rows = cursor.fetchall()
        cursor.close()
        connection.close()
        if rows:
            for row in rows:
                results.append(dict(zip(columns, row)))   
            return jsonify(results)
        else:
            return jsonify({'error': 'No entry matching this id'})
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    
@app.route('/getDive/<int:id>', methods=['GET'])
@login_required
def get_by_id_dive(id):
    try:
        
        connection = pyodbc.connect(connectionString)
        
        cursor = connection.cursor()
        
        select_query = f"SELECT * FROM Dive WHERE DiveID = ? "
        cursor.execute(select_query, id)
        
        columns = [column[0] for column in cursor.description]
        results = []
        rows = cursor.fetchall()
        cursor.close()
        connection.close()
        if rows:
            for row in rows:
                results.append(dict(zip(columns, row)))   
            return jsonify(results)
        else:
            return jsonify({'error': 'No entry matching this id'})
        
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/get/<string:table>/<int:id>', methods=['GET'])
@login_required
def get_by_id(table,id):
    try:
        columnName = table + 'id'
        
        connection = pyodbc.connect(connectionString)
        
        cursor = connection.cursor()
        
        select_query = f'SELECT * FROM {table} WHERE {columnName} = ? '
        cursor.execute(select_query, id)
        
        columns = [column[0] for column in cursor.description]
        results = []
        rows = cursor.fetchall()
        cursor.close()
        connection.close()
        if rows:
            for row in rows:
                results.append(dict(zip(columns, row)))   
            return jsonify(results)
        else:
            return jsonify({'error': 'No entry matching this id'})
        
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    

@app.route('/delete/Dive/<int:dive_id>', methods=['DELETE'])
@isAuthorized_dec
@login_required
def deleteDive_data(dive_id):
    try:
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()
        delete_query = f"DELETE FROM Dive WHERE DiveID = ?"
        cursor.execute(delete_query, (dive_id,))
        connection.commit()
        cursor.close()
        connection.close()
        return jsonify({'message': 'Data deleted successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route("/delete/Expedition/<int:expedition_id>", methods=["DELETE"])
@isAuthorized_dec
@login_required
def delete_expedition_data(expedition_id):
    try:
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()
        delete_query = "DELETE FROM Expedition WHERE ExpeditionID = ?"
        cursor.execute(delete_query, (expedition_id,))
        connection.commit()
        cursor.close()
        connection.close()
        return jsonify({'message': 'Data deleted successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    


@app.route('/get-all-calendar', methods=['GET'])
@login_required
def get_all_calendar():
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM Calendar')  
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            calendar = [dict(zip(columns, row)) for row in rows]
            return jsonify(calendar)
    except Exception as e:
        return jsonify({'error': str(e)})
@app.route('/get_all_camlogdata', methods=['GET'])
@login_required
def get_all_camlogdata():
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM  CamlogData_2024')  
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            camlog = [dict(zip(columns, row)) for row in rows]
            return jsonify(camlog)
    except Exception as e:
        return jsonify({'error': str(e)})
@app.route('/get_all_DocRickettsPilotsDive', methods=['GET'])
@login_required
def get_all_DocRickettsPilotsDive():
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM  DocRickettsPilotsDive')  
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            doc1 = [dict(zip(columns, row)) for row in rows]
            return jsonify(doc1)
    except Exception as e:
        return jsonify({'error': str(e)})
@app.route('/get_all_DocRickettsPilotsDiveStaging', methods=['GET'])
@login_required
def get_all_DocRickettsPilotsDiveStaging():
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM  DocRickettsPilotsDiveStaging')  
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            doc2 = [dict(zip(columns, row)) for row in rows]
            return jsonify(doc2)
    except Exception as e:
        return jsonify({'error': str(e)})
@app.route('/get_all_DocRickettsRawCtdData_2024', methods=['GET'])
@login_required
def get_all_DocRickettsRawCtdData_2024():
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM  DocRickettsRawCtdData_2024')  
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            doc3 = [dict(zip(columns, row)) for row in rows]
            return jsonify(doc3)
    except Exception as e:
        return jsonify({'error': str(e)})
@app.route('/adminerror', methods=['GET'])
@login_required
def adminerror():
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM  Admin_BadStillImageURL')  
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]
            error = [dict(zip(columns, row)) for row in rows]
            return jsonify(error)
    except Exception as e:
        return jsonify({'error': str(e)})
if __name__ == '__main__':
    app.run(debug=True)

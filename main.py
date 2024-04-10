from flask import Flask, jsonify , request
import pyodbc
from flask_swagger_ui import get_swaggerui_blueprint 


app = Flask(__name__)
SERVER = 'YOUR Server'
DATABASE = 'YOUR DB'
USERNAME = 'SA'
PASSWORD = 'YOURPASSWO!'

# Define the connection string
connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'

SWAGGER_URL = '/api/docs'  # URL for exposing Swagger UI (without trailing '/')
API_URL = '/static/swagger.json'  # Our API url (can of course be a local resource)


# Call factory function to create our blueprint
swaggerui_blueprint = get_swaggerui_blueprint(
    SWAGGER_URL,  # Swagger UI static files will be mapped to '{SWAGGER_URL}/dist/'
    API_URL,
    config={  # Swagger UI config overrides
        'app_name': "Test application"
    },
    # oauth_config={  # OAuth config. See https://github.com/swagger-api/swagger-ui#oauth2-configuration .
    #    'clientId': "your-client-id",
    #    'clientSecret': "your-client-secret-if-required",
    #    'realm': "your-realms",
    #    'appName': "your-app-name",
    #    'scopeSeparator': " ",
    #    'additionalQueryStringParams': {'test': "hello"}
    # }
)

app.register_blueprint(swaggerui_blueprint)

# Create Expedition POST API
@app.route("/post/create_expedition", methods=['POST'])
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



@app.route('/get/<int:id>', methods=['GET'])
def get_by_id(id):
    try:
        
        connection = pyodbc.connect(connectionString)
        
        cursor = connection.cursor()
        
        select_query = f"SELECT * FROM Admin_BadStillImageURL WHERE ExpeditionID = ? "
        cursor.execute(select_query, id)
        
        row = cursor.fetchone()
        cursor.close()
        connection.close()
        
        if row:
            return str(row)
        else:
            return jsonify({'error': 'No entry matching this id'})
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/update/Expedition/<int:expedition_id>', methods=['PUT'])
def updateExpedition_data(expedition_id):
    try:
        
        data = request.json
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()
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

        return jsonify({'message': 'Data updated successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    
@app.route('/update/Dive/<int:dive_id>', methods=['PUT'])
def updateDive_data(dive_id):
    try:
        
        data = request.json
        connection = pyodbc.connect(connectionString)
        cursor = connection.cursor()
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

        
        return jsonify({'message': 'Data updated successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)

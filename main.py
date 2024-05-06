from flask import Flask, jsonify, request
from flask_swagger_ui import get_swaggerui_blueprint
from flask_cors import CORS
from dateutil.parser import parse
import pyodbc
app = Flask(__name__)


SERVER = 'localhost' 
DATABASE = 'master'  
USERNAME = 'admin'  
PASSWORD = 'admin' 


connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'
SWAGGER_URL = '/swagger'
API_URL = '/static/swagger.json'
swaggerui_blueprint = get_swaggerui_blueprint(
    SWAGGER_URL,
    API_URL,
    config={'app_name': "Expedition and Dive API"}
)
app.register_blueprint(swaggerui_blueprint, url_prefix=SWAGGER_URL)
@app.route('/')
def home():
    return "Mbari get all function"

@app.route('/get-all-expeditions', methods=['GET'])
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


@app.route('/get-all-calendar', methods=['GET'])
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
    CORS(app) 
    app.run(debug=True)

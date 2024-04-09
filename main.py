from flask import Flask, jsonify, request
import pyodbc

app = Flask(__name__)


SERVER = 'localhost' 
DATABASE = 'master'  
USERNAME = 'admin'  
PASSWORD = 'admin' 


connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'

@app.route('/')
def home():
    return "Mbari get all function"

@app.route('/get-all-expeditions', methods=['GET'])
def get_all_expeditions():
    sort_field = request.args.get('sortfield', default='ExpeditionID', type=str)  # Default sort by ExpeditionID
    sort_order = request.args.get('sortorder', default='asc', type=str)  # Default sort order is ascending
    
    
    valid_sort_fields = ['ExpeditionID', 'ShipName']
    if sort_field not in valid_sort_fields:
        return jsonify({'error': 'Invalid sort field'}), 400

    if sort_order.lower() not in ['asc', 'desc']:
        return jsonify({'error': 'Invalid sort order'}), 400
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            query = f'SELECT * FROM Expedition ORDER BY {sort_field} {sort_order.upper()}'
            cursor.execute(query)  
            rows = cursor.fetchall()
            
            columns = [column[0] for column in cursor.description]
            expeditions = [dict(zip(columns, row)) for row in rows]
            return jsonify(expeditions)
    except Exception as e:
        return jsonify({'error': str(e)})

@app.route('/get-all-dives', methods=['GET'])
def get_all_dives():
    sort_field = request.args.get('sortfield', default='DiveID', type=str)  # Default sort by DiveID
    sort_order = request.args.get('sortorder', default='asc', type=str)  # Default sort order is ascending

    
    valid_sort_fields = ['DiveID', 'DiveStartDtg', 'DiveNumber' , 'RovName']  # Add more fields as needed
    if sort_field not in valid_sort_fields:
        return jsonify({'error': 'Invalid sort field'}), 400

    
    if sort_order.lower() not in ['asc', 'desc']:
        return jsonify({'error': 'Invalid sort order'}), 400
    try:
        with pyodbc.connect(connectionString) as conn:
            cursor = conn.cursor()
            query = f'SELECT * FROM Dive ORDER BY {sort_field} {sort_order.upper()}'
            cursor.execute(query)  
            rows = cursor.fetchall()
            
            columns = [column[0] for column in cursor.description]
            dives = [dict(zip(columns, row)) for row in rows]
            return jsonify(dives)
    except Exception as e:
        return jsonify({'error': str(e)})
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
    app.run(debug=True)

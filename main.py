from flask import Flask, jsonify
import pyodbc

app = Flask(__name__)
SERVER = 'localhost'
DATABASE = '<yourDatabaseName>'
USERNAME = '<yourUsername>'
PASSWORD = '<yourpassword>'


connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'
from flask import request

@app.route('/update/<int:expedition_id>/<int:expeditiondDataID_FK_id>', methods=['PUT'])
def update_data(expedition_id, expeditiondDataID_FK_id):
    try:
        
        data = request.json
        
        connection = pyodbc.connect(connectionString)
      
        cursor = connection.cursor()
        
        update_query = f"UPDATE Admin_BadStillImageURL SET HtmlError = ?, URL = ? WHERE ExpeditionID = ? AND ExpeditiondDataID_FK = ?"
        cursor.execute(update_query, (data['HtmlError'], data['URL'], expedition_id, expeditiondDataID_FK_id))
        
        connection.commit()
        cursor.close()
        connection.close()
        
        return jsonify({'message': 'Data updated successfully'}), 200
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

if __name__ == '__main__':
    app.run(debug=True)

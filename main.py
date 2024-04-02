from flask import Flask, jsonify
import pyodbc

app = Flask(__name__)
SERVER = 'localhost'
DATABASE = 'master'
USERNAME = 'SA'
PASSWORD = 'password1!'


connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'
from flask import request

@app.route("/post/<int:expeditiondDataID_FK_id>/<int:expedition_id>", methods=['POST'])
def create_Admin_BadStillImageURL(expeditiondDataID_FK_id, expedition_id):
    try:
        data = request.json
        HtmlError = data['HtmlError']
        URL = data['URL']

        connection = pyodbc.connect(connectionString)

        cursor = connection.cursor()

        create_query = f"INSERT INTO Admin_BadStillImageURL (ExpeditiondDataID_FK, ExpeditionID, HtmlError, URL) VALUES (?, ?, ?, ?);"
        cursor.execute(create_query, (expeditiondDataID_FK_id, expedition_id, HtmlError, URL))

        connection.commit()
        cursor.close()
        connection.close()

        return jsonify({'message': 'Admin_BadStillImageURL successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500


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

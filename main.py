from flask import Flask, jsonify
import pyodbc

app = Flask(__name__)
SERVER = 'localhost'
DATABASE = 'master'
USERNAME = 'SA'
PASSWORD = 'password1!'


connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'
from flask import request

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

@app.route('/getExpedition/<int:id>', methods=['GET'])
def get_by_id_expedition(id):
    try:
        
        connection = pyodbc.connect(connectionString)
        
        cursor = connection.cursor()
        
        select_query = f"SELECT * FROM Expedition WHERE ExpeditionID = ? "
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
    
@app.route('/getDive/<int:id>', methods=['GET'])
def get_by_id_dirve(id):
    try:
        
        connection = pyodbc.connect(connectionString)
        
        cursor = connection.cursor()
        
        select_query = f"SELECT * FROM Dive WHERE DiveID = ? "
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

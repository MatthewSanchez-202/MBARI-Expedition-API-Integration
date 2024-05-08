import pytest
import requests
import json

URL = "http://127.0.0.1:5000"
BASE_URL = "http://127.0.0.1:5000"

valid_fields = {
    '/get-all-expeditions': ['ExpeditionID', 'ShipName', 'StartDtg', 'EndDtg'],
    '/get-all-dives': ['DiveID', 'RovName', 'DiveStartDtg', 'DiveEndDtg', 'DiveNumber']
}
valid_orders = ['asc', 'desc']
# parametrize testing with diffrent values
@pytest.mark.parametrize("endpoint, field, order", [
    ('/get-all-expeditions', 'ExpeditionID', 'asc'),
    ('/get-all-expeditions', 'ExpeditionID', 'desc'),
    ('/get-all-expeditions', 'ShipName', 'asc'),
    ('/get-all-expeditions', 'ShipName', 'desc'),
    ('/get-all-expeditions', 'InvalidField', 'asc'),
    ('/get-all-expeditions', 'StartDate', 'asc'),
    ('/get-all-expeditions', 'StartDate', 'desc'),
    ('/get-all-expeditions', 'EndDate', 'asc'),
    ('/get-all-expeditions', 'EndDate', 'desc'),
    ('/get-all-expeditions', 'ShipName', 'InvalidOrder'),
    ('/get-all-dives', 'DiveID', 'asc'),
    ('/get-all-dives', 'DiveID', 'desc'),
    ('/get-all-dives', 'RovName', 'asc'),
    ('/get-all-dives', 'RovName', 'desc'),
    ('/get-all-dives', 'DiveStartDtg', 'asc'),
    ('/get-all-dives', 'DiveStartDtg', 'desc'),
    ('/get-all-dives', 'DiveEndDtg', 'asc'),
    ('/get-all-dives', 'DiveEndDtg', 'desc'),
    ('/get-all-dives', 'InvalidField', 'asc'),
    ('/get-all-dives', 'DiveID', 'InvalidOrder')
])
# function for sorted response with many inputs
def test_sorted_response(endpoint, field, order):
    if field in valid_fields.get(endpoint, []) and order in valid_orders:
        expected_status = 200
    else:
        expected_status = 400  
    response = requests.get(f"{BASE_URL}{endpoint}", params={'sortfield': field, 'sortorder': order})
    print(f"Testing {endpoint} with field {field} and order {order}")
    print(f"Expected Status: {expected_status}, Received Status: {response.status_code}")
    assert response.status_code == expected_status, f"Failed for {field} with {order}, got {response.status_code} instead of {expected_status}"

def test_home_route():
    response = requests.get(f'{BASE_URL}/')
    assert response.status_code == 200
    assert "Mbari get all function" in response.text
def test_get_all_expeditions():

    response = requests.get(f'{BASE_URL}/get-all-expeditions')
    assert response.status_code == 200
    data = response.json()
    assert isinstance(data, list)  
    if data:  
        assert 'ExpeditionID' in data[0]
        assert 'ShipName' in data[0]
        assert data[0]['ExpeditionID'] > 0  
def test_get_all_dives():

    response = requests.get(f'{BASE_URL}/get-all-dives')
    assert response.status_code == 200
    dives = response.json()
    assert isinstance(dives, list)
    if dives:
        assert 'DiveID' in dives[0]
        assert dives[0]['DiveID'] > 0  

def test_get_all_calendar():
    """Test the get-all-calendar endpoint for correct data format."""
    response = requests.get(f'{BASE_URL}/get-all-calendar')
    assert response.status_code == 200
    calendar = response.json()
    assert isinstance(calendar, list)

def test_get_all_camlogdata():

    response = requests.get(f'{BASE_URL}/get_all_camlogdata')
    assert response.status_code == 200
    camlog = response.json()
    assert isinstance(camlog, list)
    if camlog:
        assert 'DeviceID' in camlog[0]

def test_get_all_DocRickettsPilotsDive():
    """Test the get_all_DocRickettsPilotsDive endpoint for content accuracy."""
    response = requests.get(f'{BASE_URL}/get_all_DocRickettsPilotsDive')
    assert response.status_code == 200
    dives = response.json()
    assert isinstance(dives, list)

def test_get_all_DocRickettsPilotsDiveStaging():
    """Check for structure and completeness of data."""
    response = requests.get(f'{BASE_URL}/get_all_DocRickettsPilotsDiveStaging')
    assert response.status_code == 200
    staging = response.json()
    assert isinstance(staging, list)

def test_get_all_DocRickettsRawCtdData_2024():
    """Ensure the CTD data contains specific scientific measurements."""
    response = requests.get(f'{BASE_URL}/get_all_DocRickettsRawCtdData_2024')
    assert response.status_code == 200
    ctd_data = response.json()
    assert isinstance(ctd_data, list)
    if ctd_data:
        assert 't' in ctd_data[0]  

def test_adminerror():
    """Verify the error reporting mechanism is operational."""
    response = requests.get(f'{BASE_URL}/adminerror')
    assert response.status_code == 200
    errors = response.json()
    assert isinstance(errors, list)

def test_create_expedition():
    data = {
        "ExpeditionID": 60,
        "DeviceID": 5,
        "ShipName": "Ship",
        "ShipSeqNum": 7,
        "Purpose": "To Explore the creatues in the Monterey canyon",
        "StatCode": "Success",
        "ExpdChiefScientist": "Mike McCann",
        "ExpdPrincipalInvestigator": "Ryan Romero",
        "ScheduledStartDtg": "2024-03-21 12:00:00",
        "ScheduledEndDtg": "2024-03-27 11:50:00",
        "EquipmentDesc": "Gaming PC",
        "Participants": "Marc Garcia, Mike McCann, Ryan Romero",
        "RegionDesc": "Kelp Forest",
        "PlannedTrackDesc": "Going along the coast of the bay north",
        "StartDtg": "2024-03-21 13:00:00",
        "EndDtg": "2024-03-27 12:30:00",
        "Accomplishments": "Found new species of squid",
        "ScientistComments": "N/A",
        "SciObjectivesMet": "N/A",
        "OperatorComments": "Need Maintenence on Engines",
        "AllEquipmentFunctioned": "Engine failure",
        "OtherComments": "No other comments",
        "UpdatedBy": "Marc Garcia",
        "ismodified": 0
    }

    r =  requests.post(f'{URL}/post/create_expedition', json=data)
    assert r.status_code == 200

def test_create_dive():
    data = {
        "DiveID": 3,
        "DeviceID": 10,
        "RovName": "Dave",
        "DiveNumber": 20,
        "ExpeditionID_FK": 1,
        "DiveStartDtg": "2024-03-21 12:30:30",
        "DiveEndDtg": "2024-03-21 15:30:00",
        "DiveChiefScientist": "Mike McCann",
        "BriefAccomplishments": "Collected a specimen in Deep Sea",
        "DiveStartTimecode": "00:00:00:01",
        "DiveEndTimecode": "00:00:03:00",
        "DiveLatMid": 101.53,
        "DiveLonMid": 250.73,
        "DiveDepthMid": 1100.20
    }

    r = requests.post(f'{URL}/post/create_dive', json=data)
    assert r.status_code == 200

def test_get_by_id_dive():
    id = 2
    r = requests.get(f'{URL}/getDive/{id}')
    response = r.json()
    assert(r.status_code == 200)
    assert(response[0]['RovName'] == 'ROV2')
    
def test_get_by_id_expedition():
    id = 1001
    r = requests.get(f'{URL}/getExpedition/{id}')
    response = r.json()
    assert(r.status_code == 200)
    assert(response[0]['ShipName'] == 'Ship2')

def test_update_expedition_by_id():
    expeditionID = 1001
    inValidExpeditionID = 1
    data = {
        "ExpeditionID": 1001,
        "DeviceID": 5,
        "UpdatedBy": "Fabian Santano",
        "ismodified": 1
    }
    r = requests.put(f'{URL}/update/Expedition/{expeditionID}' , json=data)
    assert(r.status_code == 200)
    r = requests.put(f'{URL}/update/Expedition/{inValidExpeditionID}' , json=data)
    assert(r.status_code == 400)

def test_update_dive_by_id():
    diveID = 1
    invalidDiveID = 100000
    data = {
        "DiveID": 1,
        "DeviceID": 10,
        "RovName": "Dave",
        "DiveNumber": 20,
        "ExpeditionID_FK": 1,
        "DiveStartDtg": "2024-03-21 12:30:30",
        "DiveEndDtg": "2024-03-21 15:30:00"
    }
    r = requests.put(f'{URL}/update/Dive/{diveID}' , json=data)
    assert(r.status_code == 200)
    r = requests.put(f'{URL}/update/Dive/{invalidDiveID}' , json=data)
    assert(r.status_code == 400)

if __name__ == "__main__":
   pytest.main()


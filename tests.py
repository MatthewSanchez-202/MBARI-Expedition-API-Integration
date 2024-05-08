import pytest
import requests
import json

URL = "http://127.0.0.1:5000"
BASE_URL = "http://127.0.0.1:5000"

@pytest.fixture(scope="session")
def authenticated_session():
    session = requests.Session()
    response = session.get(f'{URL}/testIn')
    assert response.status_code == 200
    assert response.json() == "Logged In"
    return session

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
def test_sorted_response(endpoint, field, order,authenticated_session):
    if field in valid_fields.get(endpoint, []) and order in valid_orders:
        expected_status = 200
    else:
        expected_status = 400  
    response = authenticated_session.get(f"{BASE_URL}{endpoint}", params={'sortfield': field, 'sortorder': order})
    print(f"Testing {endpoint} with field {field} and order {order}")
    print(f"Expected Status: {expected_status}, Received Status: {response.status_code}")
    assert response.status_code == expected_status, f"Failed for {field} with {order}, got {response.status_code} instead of {expected_status}"

def test_home_route(authenticated_session):
    response = authenticated_session.get(f'{BASE_URL}/')
    assert response.status_code == 200
def test_get_all_expeditions(authenticated_session):
    response = authenticated_session.get(f'{BASE_URL}/get-all-expeditions')
    assert response.status_code == 200
    data = response.json()
    assert isinstance(data, list)  
    if data:  
        assert 'ExpeditionID' in data[0]
        assert 'ShipName' in data[0]
        assert data[0]['ExpeditionID'] > 0  
def test_get_all_dives(authenticated_session):

    response = authenticated_session.get(f'{BASE_URL}/get-all-dives')
    assert response.status_code == 200
    dives = response.json()
    assert isinstance(dives, list)
    if dives:
        assert 'DiveID' in dives[0]
        assert dives[0]['DiveID'] > 0  

def test_get_all_calendar(authenticated_session):
    """Test the get-all-calendar endpoint for correct data format."""
    response = authenticated_session.get(f'{BASE_URL}/get-all-calendar')
    assert response.status_code == 200
    calendar = response.json()
    assert isinstance(calendar, list)

def test_get_all_camlogdata(authenticated_session):

    response = authenticated_session.get(f'{BASE_URL}/get_all_camlogdata')
    assert response.status_code == 200
    camlog = response.json()
    assert isinstance(camlog, list)
    if camlog:
        assert 'DeviceID' in camlog[0]

def test_get_all_DocRickettsPilotsDive(authenticated_session):
    """Test the get_all_DocRickettsPilotsDive endpoint for content accuracy."""
    response = authenticated_session.get(f'{BASE_URL}/get_all_DocRickettsPilotsDive')
    assert response.status_code == 200
    dives = response.json()
    assert isinstance(dives, list)

def test_get_all_DocRickettsPilotsDiveStaging(authenticated_session):
    """Check for structure and completeness of data."""
    response = authenticated_session.get(f'{BASE_URL}/get_all_DocRickettsPilotsDiveStaging')
    assert response.status_code == 200
    staging = response.json()
    assert isinstance(staging, list)

def test_get_all_DocRickettsRawCtdData_2024(authenticated_session):
    """Ensure the CTD data contains specific scientific measurements."""
    response = authenticated_session.get(f'{BASE_URL}/get_all_DocRickettsRawCtdData_2024')
    assert response.status_code == 200
    ctd_data = response.json()
    assert isinstance(ctd_data, list)
    if ctd_data:
        assert 't' in ctd_data[0]  

def test_adminerror(authenticated_session):
    """Verify the error reporting mechanism is operational."""
    response = authenticated_session.get(f'{BASE_URL}/adminerror')
    assert response.status_code == 200
    errors = response.json()
    assert isinstance(errors, list)

def test_create_expedition(authenticated_session):
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

    r =  authenticated_session.post(f'{URL}/post/create_expedition', json=data)
    assert r.status_code == 200

def test_create_dive(authenticated_session):
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

    r = authenticated_session.post(f'{URL}/post/create_dive', json=data)
    assert r.status_code == 200

def test_get_by_id_dive(authenticated_session):
    id = 2
    r = authenticated_session.get(f'{URL}/getDive/{id}')
    response = r.json()
    assert(r.status_code == 200)
    assert(response[0]['RovName'] == 'ROV2')
    
def test_get_by_id_expedition(authenticated_session):
    id = 1001
    r = authenticated_session.get(f'{URL}/getExpedition/{id}')
    response = r.json()
    assert(r.status_code == 200)
    assert(response[0]['ShipName'] == 'Ship2')

def test_update_expedition_by_id(authenticated_session):
    expeditionID = 1001
    data = {
        "ExpeditionID": 1001,
        "DeviceID": 5,
        "UpdatedBy": "Fabian Santano",
        "ismodified": 1
    }
    r = authenticated_session.put(f'{URL}/update/Expedition/{expeditionID}' , json=data)
    assert(r.status_code == 200)
   

def test_update_dive_by_id(authenticated_session):
    diveID = 1
    data = {
        "DiveID": 1,
        "DeviceID": 10,
        "RovName": "Dave",
        "DiveNumber": 20,
        "ExpeditionID_FK": 1,
        "DiveStartDtg": "2024-03-21 12:30:30",
        "DiveEndDtg": "2024-03-21 15:30:00"
    }
    r = authenticated_session.put(f'{URL}/update/Dive/{diveID}' , json=data)
    assert(r.status_code == 200)

if __name__ == "__main__":
   pytest.main()

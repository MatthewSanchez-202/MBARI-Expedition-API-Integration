import pytest
import requests
import json
BASE_URL = "http://127.0.0.1:5000"

valid_fields = {
    '/get-all-expeditions': ['ExpeditionID', 'ShipName'],
    '/get-all-dives': ['DiveID', 'RovName', 'DiveStartDtg', 'DiveNumber']
}
valid_orders = ['asc', 'desc']

@pytest.mark.parametrize("endpoint, field, order", [
    ('/get-all-expeditions', 'ExpeditionID', 'asc'),
    ('/get-all-expeditions', 'ExpeditionID', 'desc'),
    ('/get-all-expeditions', 'ShipName', 'asc'),
    ('/get-all-expeditions', 'ShipName', 'desc'),
    ('/get-all-expeditions', 'InvalidField', 'asc'),
    ('/get-all-expeditions', 'ShipName', 'InvalidOrder'),
    ('/get-all-dives', 'DiveID', 'asc'),
    ('/get-all-dives', 'DiveID', 'desc'),
    ('/get-all-dives', 'RovName', 'asc'),
    ('/get-all-dives', 'RovName', 'desc'),
    ('/get-all-dives', 'InvalidField', 'asc'),
    ('/get-all-dives', 'DiveID', 'InvalidOrder')
])
def test_sorted_response(endpoint, field, order):
    """Test sorting functionality for various endpoints with parameterized inputs."""
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

if __name__ == "__main__":
   pytest.main()


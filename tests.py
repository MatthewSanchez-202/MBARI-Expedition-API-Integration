import pytest
import requests

URL = "http://127.0.0.1:5000"

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

-- Test data for Admin_BadStillImageURL
INSERT INTO Admin_BadStillImageURL (ExpeditiondDataID_FK, ExpeditionID, HtmlError, URL)
VALUES (1, 1001, '404 Not Found', 'http://example.com/image1.jpg'),
       (2, 1002, '500 Internal Server Error', 'http://example.com/image2.jpg');

-- Test data for Calendar
INSERT INTO Calendar (dt, UTCOffset)
VALUES ('2024-03-06 12:00:00', -5),
       ('2024-03-07 08:30:00', 0);

-- Test data for CamlogData_2024
INSERT INTO CamlogData_2024 (DatetimeGMT, DeviceID, EpochSecs, LoadID_FK, betaTimecode, hdTimecode, mainFocus, mainZoom, mainIris, focusVolts, zoomVolts, irisVolts)
VALUES ('2024-03-06 10:15:00', 1, 100, 500, '0:00:01:001', '00:00:02:02', 50, 75, 10, 3.5, 2.8, 4.2),
       ('2024-03-07 14:30:00', 2, 200, 501, '0:00:03:003', '00:00:04:04', 30, 60, 15, 2.7, 3.1, 3.9);

-- Test data for Dive
INSERT INTO Dive (DiveID, DeviceID, RovName, DiveNumber, ExpeditionID_FK, DiveStartDtg, DiveEndDtg, DiveChiefScientist, BriefAccomplishments, DiveStartTimecode, DiveEndTimecode, DiveLatMid, DiveLonMid, DiveDepthMid)
VALUES (1, 1, 'ROV1', 101, 1001, '2024-03-06 08:00:00', '2024-03-06 11:30:00', 'Dr. Smith', 'Successful exploration of underwater caves.', '00:00:00:01', '00:00:03:01', 34.56789, -123.45678, 45.6),
       (2, 2, 'ROV2', 102, 1002, '2024-03-07 09:30:00', '2024-03-07 13:00:00', 'Dr. Johnson', 'Discovery of new marine species.', '00:00:01:02', '00:00:04:02', 12.34567, -45.67890, 78.9);


-- Test data for DocRickettsPilotsDive
INSERT INTO DocRickettsPilotsDive (DiveNumber, localStart, localEnd, timezoneID, bias, gmtStart, gmtEnd, Results)
VALUES ('DRP001', '2024-03-06 10:00:00', '2024-03-06 12:00:00', 1, -5.0, '2024-03-06 15:00:00', '2024-03-06 17:00:00', 'Successful dive with interesting findings.'),
       ('DRP002', '2024-03-07 11:30:00', '2024-03-07 13:30:00', 2, 0.0, '2024-03-07 11:30:00', '2024-03-07 13:30:00', 'Exciting discoveries during the dive.');


-- Test data for DocRickettsPilotsDiveStaging
INSERT INTO DocRickettsPilotsDiveStaging (id,DiveNumber, Launch, Recover, Spare, ScientistID, SiteID, SupervisorID, Purpose, Results, MaxDepth, WaterCurrent, Wind, SeaState, VehicleID, timezoneID, timezoneBias, wettime)
VALUES (1,1, '2024-03-06 09:30:00', '2024-03-06 11:30:00', 'Backup ROV', 101, 201, 301, 'Exploration of deep-sea vents', 'Successful dive with no issues.', 1500.0, 0.5, 10.0, 3.0, 1, 1, -5.0, 120),
       (2,2, '2024-03-07 10:00:00', '2024-03-07 12:00:00', 'Backup ROV', 102, 202, 302, 'Search for new marine species', 'Exciting discoveries made during the dive.', 1200.0, 1.0, 15.0, 2.0, 2, 2, 0.0, 90);

-- Test data for DocRickettsRawCtdData_2024
INSERT INTO DocRickettsRawCtdData_2024 (DatetimeGMT, EpochSecs, LoadID_FK, ctdusecs, t, c, p, analog1, analog2, analog3, analog4, optodeusecs, dphase, rovlat, rovlon, shiplat, ctdpower, o2power, rovpower)
VALUES ('2024-03-06 12:00:00', 100, 500, 1000000, 25.5, 35.678, 1023.45, 1.23, 4.56, 7.89, 10.11, 5000000, 0.3456, 34.56789, -123.45678, 34.56789, 1, 0, 1),
       ('2024-03-07 13:30:00', 200, 501, 1500000, 28.3, 38.901, 987.65, 2.34, 5.67, 8.90, 11.12, 6000000, 0.4567, 12.34567, -45.67890, 12.34567, 0, 1, 0);

-- Test data for Expedition
INSERT INTO Expedition
VALUES (1000, 01, 'Ship1', 10, 'Purpose...', '010101', 'Scientist', 'Investigator', '2024-03-30 12:00:00', '2025-03-30 12:00:00', 'Equipment...', 'Participants...', 'Region...', 'Track...', '2024-03-30 12:00:00', '2025-03-30 12:00:00', 'Accomplishments...', 'Comments...', 'Objectivese Met?...' , 'Operator comments...', 'Functioned?...', 'Other...', 'Updated by...', 1),
       (1001, 02, 'Ship2', 20, 'Purpose...', '020202', 'Scientist', 'Investigator', '2024-03-30 12:00:00', '2025-03-30 12:00:00', 'Equipment...', 'Participants...', 'Region...', 'Track...', '2024-03-30 12:00:00', '2025-03-30 12:00:00', 'Accomplishments...', 'Comments...', 'Objectivese Met?...' , 'Operator comments...', 'Functioned?...', 'Other...', 'Updated by...', 1
       1002, 02, 'Ship3', 20, 'Purpose...', '030303', 'Scientist', 'Investigator', '2024-03-30 12:00:00', '2025-03-30 12:00:00', 'Equipment...', 'Participants...', 'Region...', 'Track...', '2024-03-30 12:00:00', '2025-03-30 12:00:00', 'Accomplishments...', 'Comments...', 'Objectivese Met?...' , 'Operator comments...', 'Functioned?...', 'Other...', 'Updated by...', 1);

SELECT * FROM Admin_BadStillImageURL;
SELECT * FROM Calendar;
SELECT * FROM CamlogData_2024;
SELECT * FROM Dive;
SELECT * FROM DocRickettsPilotsDive;
SELECT * FROM DocRickettsPilotsDiveStaging;
SELECT * FROM DocRickettsRawCtdData_2024;
SELECT * FROM Expedition;

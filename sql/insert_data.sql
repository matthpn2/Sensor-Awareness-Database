-- INSERT RAW DATA INTO SCHEMA TABLES --

-- PERSON --
INSERT INTO Person(firstname, lastname) VALUES ('Ramesh', 'Jain');
INSERT INTO Person(firstname, lastname) VALUES ('Sharad', 'Mehrotra');
INSERT INTO Person(firstname, lastname) VALUES ('Nalini', 'Venkatasubramanian');
INSERT INTO Person(firstname, lastname) VALUES ('Chen', 'Li');
INSERT INTO Person(firstname, lastname) VALUES ('Mike', 'Carey');

-- ACTIVITY --
INSERT INTO Activity(type, confidence) VALUES ('walking', 1);
INSERT INTO Activity(type, confidence) VALUES ('running', 2);
INSERT INTO Activity(type, confidence) VALUES ('entering', 3);
INSERT INTO Activity(type, confidence) VALUES ('entering', 4);
INSERT INTO Activity(type, confidence) VALUES ('entering', 2);
INSERT INTO Activity(type, confidence) VALUES ('entering', 1);

-- EVENT --
INSERT INTO Event(name, starttime, endtime) VALUES ('group meeting',  '2015-01-01 01:01:01',  '2015-01-01 03:03:03');
INSERT INTO Event(name, starttime, endtime) VALUES ('demonstration', '2015-03-03 23:55:55',  '2015-07-07 23:55:55');
INSERT INTO Event(name, starttime, endtime) VALUES ('faculty meeting', '2015-12-15 23:55:55',  '2015-12-24 11:11:11');

-- PARTICIPATED --
INSERT INTO Participated(aid, pid) VALUES (1, 1);
INSERT INTO Participated(aid, pid) VALUES (2, 3);
INSERT INTO Participated(aid, pid) VALUES (3, 1);
INSERT INTO Participated(aid, pid) VALUES (3, 2);
INSERT INTO Participated(aid, pid) VALUES (3, 3);
INSERT INTO Participated(aid, pid) VALUES (3, 4);
INSERT INTO Participated(aid, pid) VALUES (3, 5);
INSERT INTO Participated(aid, pid) VALUES (4, 5);
INSERT INTO Participated(aid, pid) VALUES (4, 3);
INSERT INTO Participated(aid, pid) VALUES (4, 2);
INSERT INTO Participated(aid, pid) VALUES (5, 1);
INSERT INTO Participated(aid, pid) VALUES (5, 2);
INSERT INTO Participated(aid, pid) VALUES (5, 3);
INSERT INTO Participated(aid, pid) VALUES (5, 4);
INSERT INTO Participated(aid, pid) VALUES (5, 5);

-- BUILDING --
INSERT INTO Building(name, street, city, zipcode, state) VALUES ('DBH', 'University of Irvine', 'Irvine', '92697', 'CA');
INSERT INTO Building(name, street, city, zipcode, state) VALUES ('ICS', 'University of Irvine', 'Irvine', '92697', 'CA');
INSERT INTO Building(name, street, city, zipcode, state) VALUES ('EH', 'University of Irvine', 'Irvine', '92697', 'CA');

-- LOCATION OBJECT --
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R1100', 'Room', 0, 20, 1, 21);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R1200', 'Room', 1, 21, 2, 22);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R1300', 'Room', 2, 22, 3, 23);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('1stfloor_corridor', 'Corridor', 2, 100, 3, 100);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('1stfloor_lounge', 'Open Area', 2, 101, 3, 101);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R2110', 'Room', 1, 1, 2, 2);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R2120', 'Room', 2, 2, 3, 3);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R2130', 'Room', 3, 3, 4, 4);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('2ndfloor_corridor', 'Corridor', 3, 100, 4, 100);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('2ndfloor_lounge', 'Open Area', 3, 101, 4, 101);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R3210', 'Room', 4, 4, 5, 5);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R3220', 'Room', 5, 5, 6, 6);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R3223', 'Room', 6, 6, 7, 7);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R3230', 'Room', 7, 7, 8, 8);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('3rdfloor_corridor', 'Corridor', 4, 100, 5, 100);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('3rdfloor_lounge', 'Open Area', 4, 101, 5, 101);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R4410', 'Room', 8, 8, 9, 9);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R4420', 'Room', 10, 10, 11, 11);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R4430', 'Room', 11, 11, 12, 12);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('4thfloor_corridor', 'Corridor', 5, 100, 6, 100);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('4thfloor_lounge', 'Open Area', 5, 101, 6, 101);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R5410', 'Room', 13, 13, 14, 14);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R5420', 'Room', 14, 14, 15, 15);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('R5430', 'Room', 15, 15, 16, 16);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('5thfloor_corridor', 'Corridor', 6, 100, 7, 100);
INSERT INTO LocationObject(name, type, boxLowX, boxLowY, boxUpperX, boxUpperY) VALUES ('5thfloor_lounge', 'Open Area', 6, 101, 7, 101);

-- TOOK PLACE --
INSERT INTO TookPlace(aid, loid) VALUES(1, 1);
INSERT INTO TookPlace(aid, loid) VALUES(2, 1);
INSERT INTO TookPlace(aid, loid) VALUES(3, 1);
INSERT INTO TookPlace(aid, loid) VALUES(4, 14);
INSERT INTO TookPlace(aid, loid) VALUES(5, 13);
INSERT INTO TookPlace(aid, loid) VALUES(6, 6);

-- CONSTITUTES --
INSERT INTO Constitutes(aid, eid) VALUES(1, 1);
INSERT INTO Constitutes(aid, eid) VALUES(2, 2);
INSERT INTO Constitutes(aid, eid) VALUES(3, 3);

-- ROOM --
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (1, 1100, 30, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (2, 1200, 100, false, true);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (3, 1300, 50, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (6, 2110, 10, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (7, 2120, 20, false, true);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (8, 2130, 50, false, true);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (11, 3210, 45, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (12, 3220, 50, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (13, 3223, 5, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (14, 3230, 2, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (17, 4410, 15, false, true);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (18, 4420, 56, false, true);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (19, 4430, 120, true, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (22, 5410, 39, true, true);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (23, 5420, 60, false, false);
INSERT INTO Room(loid, roomnumber, capacity, isoffice, ismeetingroom) VALUES (24, 5430, 90, false, true);

-- ASSIGNED TO --
INSERT INTO AssignedTo(pid, loid) VALUES (1, 1);
INSERT INTO AssignedTo(pid, loid) VALUES (2, 2);
INSERT INTO AssignedTo(pid, loid) VALUES (3, 3);
INSERT INTO AssignedTo(pid, loid) VALUES (4, 6);
INSERT INTO AssignedTo(pid, loid) VALUES (1, 7);
INSERT INTO AssignedTo(pid, loid) VALUES (1, 8);
INSERT INTO AssignedTo(pid, loid) VALUES (1, 11);
INSERT INTO AssignedTo(pid, loid) VALUES (1, 12);
INSERT INTO AssignedTo(pid, loid) VALUES (2, 13);
INSERT INTO AssignedTo(pid, loid) VALUES (3, 14);
INSERT INTO AssignedTo(pid, loid) VALUES (5, 17);
INSERT INTO AssignedTo(pid, loid) VALUES (1, 18);
INSERT INTO AssignedTo(pid, loid) VALUES (2, 19);
INSERT INTO AssignedTo(pid, loid) VALUES (2, 22);
INSERT INTO AssignedTo(pid, loid) VALUES (3, 23);
INSERT INTO AssignedTo(pid, loid) VALUES (1, 24);

-- PART OF --
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 1, 1);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 2, 1);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 3, 1);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 4, 1);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 5, 1);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 6, 2);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 7, 2);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 8, 2);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 9, 2);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 10, 2);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 11, 3);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 12, 3);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 13, 3);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 14, 3);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 15, 3);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 16, 3);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 17, 4);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 18, 4);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 19, 4);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 20, 4);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 21, 4);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 22, 5);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 23, 5);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 24, 5);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 25, 5);
INSERT INTO PartOf(bid, loid, floor) VALUES (1, 26, 5);

-- SENSOR --
INSERT INTO Sensor(name) VALUES ('Temp1');
INSERT INTO Sensor(name) VALUES ('Temp2');
INSERT INTO Sensor(name) VALUES ('GPS1');
INSERT INTO Sensor(name) VALUES ('Image1');
INSERT INTO Sensor(name) VALUES ('Temp3');
INSERT INTO Sensor(name) VALUES ('Temp4');
INSERT INTO Sensor(name) VALUES ('Image2');
INSERT INTO Sensor(name) VALUES ('GPS2');

-- SENSOR PLATFORM --
INSERT INTO SensorPlatform(name) VALUES ('EHSensorPlatform');
INSERT INTO SensorPlatform(name) VALUES ('DBHSensorPlatform');

-- OWNER OF --
INSERT INTO OwnerOf(pid, spid) VALUES (1, 1);
INSERT INTO OwnerOf(pid, spid) VALUES (2, 2);

-- HAS SENSOR --
INSERT INTO hasSensor(spid, sid) VALUES (1, 1);
INSERT INTO hasSensor(spid, sid) VALUES (1, 2);
INSERT INTO hasSensor(spid, sid) VALUES (1, 3);
INSERT INTO hasSensor(spid, sid) VALUES (1, 4);
INSERT INTO hasSensor(spid, sid) VALUES (1, 5);
INSERT INTO hasSensor(spid, sid) VALUES (2, 6);
INSERT INTO hasSensor(spid, sid) VALUES (2, 7);
INSERT INTO hasSensor(spid, sid) VALUES (2, 8);

-- FIXED PLATFORM --
INSERT INTO FixedPlatform(spid, loid) VALUES (1, 1);
INSERT INTO FixedPlatform(spid, loid) VALUES (2, 2);

-- TEMPERATURE SENSOR --
INSERT INTO TemperatureSensor(sid, metricsystem) VALUES (1, 'Kelvin');
INSERT INTO TemperatureSensor(sid, metricsystem) VALUES (2, 'Kelvin');
INSERT INTO TemperatureSensor(sid, metricsystem) VALUES (5, 'Celsius');
INSERT INTO TemperatureSensor(sid, metricsystem) VALUES (6, 'Kelvin');

-- GPS SENSOR --
INSERT INTO GPSSensor(sid, power) VALUES (3, 10.0);
INSERT INTO GPSSensor(sid, power) VALUES (8, 20.0);

-- IMAGE SENSOR --
INSERT INTO ImageSensor(sid, resolution) VALUES (4, '2048×1080');
INSERT INTO ImageSensor(sid, resolution) VALUES (7, '2048×1080');

-- OBSERVATION --
INSERT INTO Observation(oid, sid) VALUES (1, 1);
INSERT INTO Observation(oid, sid) VALUES (2, 1);
INSERT INTO Observation(oid, sid) VALUES (3, 1);
INSERT INTO Observation(oid, sid) VALUES (4, 1);
INSERT INTO Observation(oid, sid) VALUES (5, 1);
INSERT INTO Observation(oid, sid) VALUES (6, 1);
INSERT INTO Observation(oid, sid) VALUES (7, 1);
INSERT INTO Observation(oid, sid) VALUES (8, 1);
INSERT INTO Observation(oid, sid) VALUES (9, 1);
INSERT INTO Observation(oid, sid) VALUES (10, 1);
INSERT INTO Observation(oid, sid) VALUES (11, 1);
INSERT INTO Observation(oid, sid) VALUES (12, 1);
INSERT INTO Observation(oid, sid) VALUES (13, 1);
INSERT INTO Observation(oid, sid) VALUES (14, 1);
INSERT INTO Observation(oid, sid) VALUES (15, 1);
INSERT INTO Observation(oid, sid) VALUES (16, 1);
INSERT INTO Observation(oid, sid) VALUES (17, 1);
INSERT INTO Observation(oid, sid) VALUES (18, 1);
INSERT INTO Observation(oid, sid) VALUES (19, 1);
INSERT INTO Observation(oid, sid) VALUES (20, 1);
INSERT INTO Observation(oid, sid) VALUES (21, 1);
INSERT INTO Observation(oid, sid) VALUES (22, 1);
INSERT INTO Observation(oid, sid) VALUES (23, 1);
INSERT INTO Observation(oid, sid) VALUES (24, 1);
INSERT INTO Observation(oid, sid) VALUES (25, 1);
INSERT INTO Observation(oid, sid) VALUES (26, 1);
INSERT INTO Observation(oid, sid) VALUES (27, 1);
INSERT INTO Observation(oid, sid) VALUES (28, 1);
INSERT INTO Observation(oid, sid) VALUES (29, 1);
INSERT INTO Observation(oid, sid) VALUES (30, 1);
INSERT INTO Observation(oid, sid) VALUES (31, 1);
INSERT INTO Observation(oid, sid) VALUES (32, 1);
INSERT INTO Observation(oid, sid) VALUES (33, 1);
INSERT INTO Observation(oid, sid) VALUES (34, 1);
INSERT INTO Observation(oid, sid) VALUES (35, 1);
INSERT INTO Observation(oid, sid) VALUES (36, 1);
INSERT INTO Observation(oid, sid) VALUES (37, 1);
INSERT INTO Observation(oid, sid) VALUES (38, 2);
INSERT INTO Observation(oid, sid) VALUES (39, 1);
INSERT INTO Observation(oid, sid) VALUES (40, 2);
INSERT INTO Observation(oid, sid) VALUES (41, 1);
INSERT INTO Observation(oid, sid) VALUES (42, 1);
INSERT INTO Observation(oid, sid) VALUES (43, 2);
INSERT INTO Observation(oid, sid) VALUES (44, 1);
INSERT INTO Observation(oid, sid) VALUES (45, 1);
INSERT INTO Observation(oid, sid) VALUES (46, 2);
INSERT INTO Observation(oid, sid) VALUES (47, 1);
INSERT INTO Observation(oid, sid) VALUES (48, 1);
INSERT INTO Observation(oid, sid) VALUES (49, 5);
INSERT INTO Observation(oid, sid) VALUES (50, 3);
INSERT INTO Observation(oid, sid) VALUES (51, 4);
INSERT INTO Observation(oid, sid) VALUES (52, 4);
INSERT INTO Observation(oid, sid) VALUES (53, 4);
INSERT INTO Observation(oid, sid) VALUES (54, 4);
INSERT INTO Observation(oid, sid) VALUES (55, 4);
INSERT INTO Observation(oid, sid) VALUES (56, 4);
INSERT INTO Observation(oid, sid) VALUES (57, 4);
INSERT INTO Observation(oid, sid) VALUES (58, 5);
INSERT INTO Observation(oid, sid) VALUES (59, 5);
INSERT INTO Observation(oid, sid) VALUES (60, 6);
INSERT INTO Observation(oid, sid) VALUES (61, 6);
INSERT INTO Observation(oid, sid) VALUES (62, 6);
INSERT INTO Observation(oid, sid) VALUES (63, 8);
INSERT INTO Observation(oid, sid) VALUES (64, 8);
INSERT INTO Observation(oid, sid) VALUES (65, 8);
INSERT INTO Observation(oid, sid) VALUES (66, 7);
INSERT INTO Observation(oid, sid) VALUES (67, 7);
INSERT INTO Observation(oid, sid) VALUES (68, 7);

-- RAW TEMPERATURE --
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (1, 1, 313.1, '2015-01-01 01:01:01');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (2, 1, 312.2, '2015-01-01 02:02:02');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (3, 1, 305.3, '2015-01-01 03:03:03');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (4, 1, 306.4, '2015-01-01 03:13:13');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (5, 1, 307.5, '2015-01-01 04:04:11');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (6, 1, 308.6, '2015-01-01 05:05:05');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (7, 1, 309.7, '2015-01-01 06:06:06');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (8, 1, 310.8, '2015-01-01 07:07:07');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (9, 1, 311.9, '2015-01-01 08:08:08');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (10, 1, 312.10, '2015-01-01 09:09:09');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (11, 1, 311.11, '2015-01-01 10:10:10');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (12, 1, 312.12, '2015-01-01 11:11:11');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (13, 1, 313.13, '2015-01-01 11:12:13');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (14, 1, 314.14, '2015-01-01 12:12:12');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (15, 1, 315.15, '2015-01-01 13:13:13');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (16, 1, 316.16, '2015-01-01 14:14:14');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (17, 1, 317.17, '2015-01-01 14:15:15');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (18, 1, 318.18, '2015-01-01 15:15:15');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (19, 1, 319.19, '2015-01-01 15:15:18');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (20, 1, 320.20, '2015-01-01 15:15:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (21, 1, 321.21, '2015-01-01 16:16:16');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (22, 1, 322.22, '2015-01-01 16:26:26');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (23, 1, 323.23, '2015-01-01 17:17:17');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (24, 1, 324.24, '2015-01-01 17:57:57');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (25, 1, 325.25, '2015-01-01 17:59:59');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (26, 1, 326.26, '2015-01-01 18:18:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (27, 1, 327.27, '2015-01-01 18:28:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (28, 1, 328.28, '2015-01-01 18:38:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (29, 1, 329.29, '2015-01-01 18:48:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (30, 1, 330.30, '2015-01-01 18:58:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (31, 1, 331.31, '2015-01-01 19:19:19');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (32, 1, 332.32, '2015-01-01 20:20:20');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (33, 1, 333.33, '2015-01-01 21:21:21');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (34, 1, 334.34, '2015-01-01 22:22:22');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (35, 1, 335.35, '2015-01-01 23:23:23');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (36, 1, 336.36, '2015-01-01 23:33:33');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (37, 1, 337.37, '2015-01-01 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (38, 2, 338.38, '2015-01-01 23:59:59');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (39, 1, 339.39, '2015-02-02 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (40, 2, 340.40, '2015-03-03 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (41, 1, 341.41, '2015-04-05 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (42, 1, 342.42, '2015-05-05 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (43, 2, 343.43, '2015-06-06 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (44, 1, 344.45, '2015-07-07 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (45, 1, 345.45, '2015-08-08 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (46, 2, 346.46, '2015-09-10 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (47, 1, 347.47, '2015-10-10 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (48, 1, 348.46, '2015-11-11 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (49, 5, 348.48, '2015-12-15 23:55:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (60, 6, 23.0, '2016-10-10 11:00:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (61, 6, 24.0, '2016-11-11 11:05:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (62, 6, 24.5, '2016-12-15 11:10:55');

-- RAW GPS --
INSERT INTO RawGPS(oid, sid, latitude, longitude, tstamp) VALUES (50, 3, 10.0, 20.0, '2015-12-24 11:11:11');
INSERT INTO RawGPS(oid, sid, latitude, longitude, tstamp) VALUES (63, 8, 34.0, 36.0, '2016-12-24 00:01:02');
INSERT INTO RawGPS(oid, sid, latitude, longitude, tstamp) VALUES (64, 8, 32.0, 34.0, '2016-11-01 00:10:10');
INSERT INTO RawGPS(oid, sid, latitude, longitude, tstamp) VALUES (65, 8, 5.0, 11.0, '2016-11-30 00:20:10');

-- RAW IMAGE --
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (51, 4, 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAB1klEQVR42n2TzytEURTHv3e8N1joRhZG', '2015-12-24 13:00:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (52, 4, 'QWK8WZZ+Hdf7QGu7fobMuZHyq1DoJLvUqQrfM966EU/qYGwAAAAASUVORK5CYII=', '2015-12-24 13:30:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (53, 4, '9U/AC0ulSXrrhMotka/lQy0Ic08FDeIiAmDvA2HX01W05TopS2j2/H4T6FBVbj4YgV5+AecyLk+Ctvms', '2015-12-24 14:00:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (54, 4, 'ciYAoby0M4oNYBrXgdgAbC/MhGCRhyhCZwrcEz1Ib3KKO7f+2I4iFvoVmIxHigGiZHhPIb0bL1bQApFS', '2015-12-24 14:30:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (55, 4, 'nIK3uQ4JJQME4sCxCIRxQbMwPNSjqaobsfskm9l4Ky6jvCzWEnDKU1ayQPe5BbN64vYJ2vwO7CIeLIi3', '2015-12-24 15:00:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (56, 4, 'J/yCwiMI+/xgjOEzmzIhAio04GeGayIXjQ0wGoAuQ5cmIjh8jNo0GF78QwNhpyvV1O9tdxSSR6PLl51F', '2015-12-25 15:30:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (57, 4, 'XmS+MjhKxDHgC+quyaPKQtoPYMQPOh5U9H6tBxF+Icy/aolqAqLP5wjWd5r/Ip3YXVILrF4ZRYAxDhCO', '2015-12-25 16:00:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (66, 7, 'nIK3uQ4JJQME4sCxCIRxQbMwPNSjqaobsfskm9l4Ky6jvCzWEnDKU1ayQPe5BbN64vYJ2vwO7CIeLIi3', '2016-11-03 15:30:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (67, 7, 'J/yCwiMI+/xgjOEzmzIhAio04GeGayIXjQ0wGoAuQ5cmIjh8jNo0GF78QwNhpyvV1O9tdxSSR6PLl51F', '2016-02-22 15:30:00');
INSERT INTO RawImage(oid, sid, image, tstamp) VALUES (68, 7, 'XmS+MjhKxDHgC+quyaPKQtoPYMQPOh5U9H6tBxF+Icy/aolqAqLP5wjWd5r/Ip3YXVILrF4ZRYAxDhCO', '2016-02-23 16:00:00');

-- DERIVED FROM --
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (1, 1, 1, '2015-01-01 01:01:01');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (1, 2, 1, '2015-01-01 02:02:02');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (1, 3, 1, '2015-01-01 03:03:03');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (2, 40, 2, '2015-03-03 23:55:55');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (2, 41, 1, '2015-04-05 23:55:55');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (2, 42, 1, '2015-05-05 23:55:55');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (2, 43, 2, '2015-06-06 23:55:55');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (2, 44, 1, '2015-07-07 23:55:55');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (3, 49, 5, '2015-12-15 23:55:55');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (3, 50, 3, '2015-12-24 11:11:11');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (2, 65, 8, '2016-11-30 15:00:00');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (3, 66, 7, '2016-11-03 15:30:00');
INSERT INTO DerivedFrom(aid, oid, sid, timestamp) VALUES (3, 67, 7, '2016-02-23 16:00:00');
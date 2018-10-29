-- CREATE and USE SENSOR AWARENESS DATABASE --
DROP DATABASE IF EXISTS sensor_awareness;
CREATE DATABASE sensor_awareness;
USE sensor_awareness;

-- BUILDING SCHEMA TABLE --
CREATE TABLE Building
    (
        bid INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        street VARCHAR(100) NOT NULL,
        city VARCHAR(50) NOT NULL,
        zipcode CHAR(5) NOT NULL,
        state CHAR(2) NOT NULL,
        PRIMARY KEY (bid)
    );

-- LOCATION OBJECT SCHEMA TABLE --
CREATE TABLE LocationObject
    (
        loid INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        type ENUM('Room', 'Corridor', 'Open Area') NOT NULL,
        boxLowX INT UNSIGNED NOT NULL,
        boxLowY INT UNSIGNED NOT NULL,
        boxUpperX INT UNSIGNED NOT NULL,
        boxUpperY INT UNSIGNED NOT NULL,
        PRIMARY KEY (loid)
    );

-- ROOM SCHEMA TABLE --
CREATE TABLE Room
    (
        loid INT NOT NULL AUTO_INCREMENT,
        roomnumber VARCHAR(50) NOT NULL,
        capacity INT UNSIGNED NOT NULL,
        isoffice BOOL NOT NULL,
        ismeetingroom BOOL NOT NULL,
        PRIMARY KEY (loid),
        FOREIGN KEY (loid) REFERENCES LocationObject(loid)
    );

-- PART OF SCHEMA TABLE --
CREATE TABLE PartOf
    (
        bid INT NOT NULL,
        loid INT NOT NULL,
        floor INT NOT NULL,
        PRIMARY KEY (loid),
        FOREIGN KEY (bid) REFERENCES Building(bid),
        FOREIGN KEY (loid) REFERENCES LocationObject(loid)
    );

-- PERSON SCHEMA TABLE --
CREATE TABLE Person
    (
        pid INT NOT NULL AUTO_INCREMENT,
        firstname VARCHAR(100),
        lastname VARCHAR(100),
        PRIMARY KEY (pid)
    );

-- ASSIGNED TO SCHEMA TABLE --
CREATE TABLE Assignedto
    (
        pid INT NOT NULL,
        loid INT NOT NULL,
        PRIMARY KEY (pid, loid),
        FOREIGN KEY (pid) REFERENCES Person(pid),
        FOREIGN KEY (loid) REFERENCES LocationObject(loid)
    );

-- SENSOR PLATFORM SCHEMA TABLE --
CREATE TABLE SensorPlatform
    (
        spid INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        PRIMARY KEY (spid)
    );

-- SENSOR SCHEMA TABLE --
CREATE TABLE Sensor
    (
        sid INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,    
        PRIMARY KEY (sid)
    );

-- HAS SENSOR SCHEMA TABLE --
CREATE TABLE hasSensor
    (
        spid INT NOT NULL,
        sid INT NOT NULL,
        PRIMARY KEY (spid, sid),
        FOREIGN KEY (spid) REFERENCES SensorPlatform(spid),
        FOREIGN KEY (sid) REFERENCES Sensor(sid)
    );

-- LOCATION SENSOR SCHEMA TABLE --
CREATE TABLE LocationSensor
    (
        sid INT NOT NULL,
        realtime BOOL NOT NULL,
        PRIMARY KEY (sid),
        FOREIGN KEY (sid) REFERENCES Sensor(sid)
    );

-- MOBILE PLATFORM SCHEMA TABLE --
CREATE TABLE MobilePlatform
    (
        spid INT NOT NULL,
        sid INT NOT NULL,
        PRIMARY KEY (spid),
        FOREIGN KEY (spid) REFERENCES SensorPlatform(spid),
        FOREIGN KEY (sid) REFERENCES LocationSensor(sid)
    );

-- FIXED PLATFORM SCHEMA TABLE --
CREATE TABLE FixedPlatform
    (
        spid INT NOT NULL,
        loid INT NOT NULL,
        PRIMARY KEY (spid),
        FOREIGN KEY (spid) REFERENCES SensorPlatform(spid),
        FOREIGN KEY (loid) REFERENCES LocationObject(loid)
    );

-- OWNER OF SCHEMA TABLE --
CREATE TABLE OwnerOf
    (
        spid INT NOT NULL,
        pid INT NOT NULL,
        PRIMARY KEY (spid),
        FOREIGN KEY (spid) REFERENCES SensorPlatform(spid),
        FOREIGN KEY (pid) REFERENCES Person(pid)
    );

-- IMAGE SENSOR SCHEMA TABLE --
CREATE TABLE ImageSensor
    (
        sid INT NOT NULL,
        resolution ENUM('720×480', '1280×720', '2048×1080') NOT NULL,
        PRIMARY KEY (sid),
        FOREIGN KEY (sid) REFERENCES Sensor(sid)
    );

-- TEMPERATURE SENSOR SCHEMA TABLE --
CREATE TABLE TemperatureSensor
    (
        sid INT NOT NULL,
        metricsystem ENUM('Celsius', 'Kelvin') NOT NULL,
        PRIMARY KEY (sid),
        FOREIGN KEY (sid) REFERENCES Sensor(sid)
    );

-- GPS SENSOR SCHEMA TABLE --
CREATE TABLE GPSSensor
    (
        sid INT NOT NULL,
        power FLOAT,
        PRIMARY KEY (sid),
        FOREIGN KEY (sid) REFERENCES Sensor(sid)
    );

-- OBSERVATION SCHEMA TABLE --
CREATE TABLE Observation
    (
        oid INT NOT NULL,
        sid INT NOT NULL,
        PRIMARY KEY (oid, sid),
        FOREIGN KEY (sid) REFERENCES Sensor(sid)
    );

-- RAW IMAGE SCHEMA TABLE --
CREATE TABLE RawImage
    ( 
        oid INT NOT NULL,
        sid INT NOT NULL,
        image BLOB NOT NULL,
        tstamp DATETIME NOT NULL,
        PRIMARY KEY (oid, sid),
        FOREIGN KEY (oid, sid) REFERENCES Observation(oid, sid),
        FOREIGN KEY (sid) REFERENCES ImageSensor(sid)
    );

-- RAW TEMPERATURE SCHEMA TABLE --
CREATE TABLE RawTemperature
    (
        oid INT NOT NULL,
        sid INT NOT NULL,
        temperature FLOAT,
        tstamp DATETIME NOT NULL,
        PRIMARY KEY (oid, sid),
        FOREIGN KEY (oid, sid) REFERENCES Observation(oid, sid),
        FOREIGN KEY (sid) REFERENCES TemperatureSensor(sid)
    );

-- RAW GPS SCHEMA TABLE --
CREATE TABLE RawGPS
    (
        oid INT NOT NULL,
        sid INT NOT NULL,
        latitude FLOAT,
        longitude FLOAT,
        tstamp DATETIME NOT NULL,
        PRIMARY KEY (oid, sid),
        FOREIGN KEY (oid, sid) REFERENCES Observation(oid, sid),
        FOREIGN KEY (sid) REFERENCES GPSSensor(sid)
    );

-- EVENT SCHEMA TABLE --
CREATE TABLE Event
    (
        eid INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(20) NOT NULL,
        starttime DATETIME NOT NULL,
        endtime DATETIME NOT NULL,
        PRIMARY KEY (eid)
    );

-- ACTIVITY SCHEMA TABLE --
CREATE TABLE Activity
    (
        aid INT NOT NULL AUTO_INCREMENT,
        type ENUM('running', 'walking', 'entering', 'bending', 'standing') NOT NULL,
        confidence INT UNSIGNED,
        PRIMARY KEY (aid)
    );

-- CONSTITUTES SCHEMA TABLE --
CREATE TABLE Constitutes
    (
        aid INT NOT NULL,
        eid INT NOT NULL,
        PRIMARY KEY (aid),
        FOREIGN KEY (aid) REFERENCES Activity(aid),
        FOREIGN KEY (eid) REFERENCES Event(eid)
    );

-- TOOK PLACE SCHEMA TABLE --
CREATE TABLE TookPlace
    (
        aid INT NOT NULL,
        loid INT NOT NULL,
        PRIMARY KEY (aid),
        FOREIGN KEY (aid) REFERENCES Activity(aid),
        FOREIGN KEY (loid) REFERENCES LocationObject(loid)
    );

-- DERIVED FROM SCHEMA TABLE --
CREATE TABLE DerivedFrom
    (
        aid INT NOT NULL,
        oid INT NOT NULL,
        sid INT NOT NULL,
        timestamp DATETIME NOT NULL,
        PRIMARY KEY (aid, oid, sid),
        FOREIGN KEY (aid) REFERENCES Activity(aid),
        FOREIGN KEY (oid, sid) REFERENCES Observation(oid, sid)
    );

-- PARTICIPATED SCHEMA TABLE --
CREATE TABLE Participated
    (
        aid INT NOT NULL,
        pid INT NOT NULL,
        PRIMARY KEY (aid, pid),
        FOREIGN KEY (aid) REFERENCES Activity(aid),
        FOREIGN KEY (pid) REFERENCES Person(pid)
    );
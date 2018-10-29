-- MALFUNCTIONING SENSOR TRIGGER and VERIFICATION --
delimiter // 
CREATE TRIGGER erroneousSensor
    BEFORE INSERT 
        ON RawTemperature FOR EACH ROW
    BEGIN
        DECLARE prev_temp FLOAT;
        DECLARE prev_date DATE;
        DECLARE null_temp INT;
        SET null_temp = 0;

        SELECT rt.temperature, DATE(rt.tstamp) INTO prev_temp, prev_date 
        FROM RawTemperature AS rt
        WHERE rt.oid = NEW.oid - 1 AND rt.sid = NEW.sid;

        IF ABS(NEW.temperature - prev_temp) > 100 AND 
            DATEDIFF(DATE(NEW.tstamp), prev_date) < 7 THEN
            SET NEW.temperature = NULL;
        END IF;

        SELECT COUNT(1) INTO null_temp
        FROM RawTemperature AS rt
        WHERE rt.temperature is NULL AND rt.sid = NEW.sid;
        
        IF null_temp > 0 THEN
            SET NEW.temperature = NULL;
        END IF;
    END;// 
delimiter ;

INSERT INTO Observation(oid, sid) VALUES (200, 6);
INSERT INTO Observation(oid, sid) VALUES (201, 6);
INSERT INTO Observation(oid, sid) VALUES (202, 6);
INSERT INTO Observation(oid, sid) VALUES (203, 6);
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (200, 6, 344.45, '2017-07-07 20:00:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (201, 6, 20.45, '2017-07-17 20:00:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (202, 6, 140.45, '2017-07-19 20:45:55');
INSERT INTO RawTemperature(oid, sid, temperature, tstamp) VALUES (203, 6, 150.45, '2017-07-20 20:50:55');

SELECT * FROM RawTemperature WHERE sid=6;


-- ROOM CAPACITY, FIRE CODE TRIGGER and VERIFICATION --
CREATE TABLE FCV
    (
        loid INT NOT NULL,
        roomnumber VARCHAR(50) NOT NULL,
        eid INT NOT NULL,
        PRIMARY KEY(loid, eid),
        FOREIGN KEY(loid) REFERENCES LocationObject(loid),
        FOREIGN KEY(eid) REFERENCES Event(eid)
    );

delimiter // 
CREATE TRIGGER capacityViolation
    AFTER INSERT 
        ON Constitutes FOR EACH ROW
    BEGIN
        DECLARE f_eid INT;
        DECLARE f_loid INT;
        DECLARE f_rn VARCHAR(50);
        DECLARE f_count INT;
        DECLARE f_cap INT;

        SELECT eid, loid, roomnumber, COUNT(DISTINCT(pid)), capacity
        INTO f_eid, f_loid, f_rn, f_count, f_cap
        FROM Event 
        NATURAL JOIN Constitutes AS c 
        NATURAL JOIN Activity 
        NATURAL JOIN Participated 
        NATURAL JOIN ( SELECT loid, aid, roomnumber, capacity 
                       FROM TookPlace NATURAL JOIN LocationObject NATURAL JOIN Room) AS r
        WHERE type="entering" AND c.eid = NEW.eid
        GROUP BY eid, loid, roomnumber, capacity;

        IF f_count > f_cap THEN
            INSERT INTO FCV(loid, roomnumber, eid) VALUES (f_loid, f_rn, f_eid);
        END IF;
    END;//
delimiter ;

INSERT INTO Event(name, starttime, endtime) VALUES ('gathering', '2017-11-15 14:00:00', '2017-11-15 17:00:00');
INSERT INTO Event(name, starttime, endtime) VALUES ('thesis-defence', '2017-11-16 13:00:00', '2017-11-16 14:30:00');
INSERT INTO Constitutes(aid, eid) VALUES(4, 4);
INSERT INTO Constitutes(aid, eid) VALUES(5, 5);

Select * FROM FCV;
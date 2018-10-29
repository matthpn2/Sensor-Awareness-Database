-- FIND THE CAPACITY OF PROFESSOR CHEN LI'S OFFICE. --
SELECT r.capacity
FROM Room AS r
JOIN AssignedTo AS at 
    ON r.loid = at.loid
JOIN Person AS p 
    ON at.pid = p.pid
WHERE p.firstname = 'Chen' AND p.lastname = 'Li';

SELECT r.capacity
FROM Room AS r
JOIN (
        SELECT at.loid
        FROM Person AS p
        JOIN AssignedTo AS at
        ON p.pid = at.pid
        WHERE p.firstname = 'Chen' AND p.lastname = 'Li'
     ) AS pat
ON pat.loid = r.loid
WHERE r.isoffice = 1;

SELECT r.capacity
FROM Room AS r, Person AS p, AssignedTo as at
WHERE p.firstname = 'Chen' AND p.lastname = 'Li' AND a.pid = p.pid AND at.loid = r.loid;


-- LIST TYPE AND NUMBER OF ACTIVITIES PER ACTIVITY TYPE THAT HAPPENED IN ROOM NAME "R1100" IN 2016. --
SELECT a.type,
       COUNT(*)
FROM DerivedFrom AS df
JOIN Activity AS a
    ON df.aid = a.aid
WHERE Year(df.timestamp) = 2016 AND EXISTS (
                                               SELECT *
                                               FROM TookPlace AS tp 
                                               NATURAL JOIN LocationObject AS l
                                               WHERE l.name = 'R1100'
                                           )
GROUP BY a.type;


-- LIST IDS OF ACTIVITIES THAT OCCURRED IN DBH IN 2016. --
SELECT DISTINCT aid
FROM TookPlace
NATURAL JOIN DerivedFrom 
NATURAL JOIN Building
NATURAL JOIN PartOf
WHERE name = 'DBH' AND YEAR(timestamp) = 2016;


-- LIST NAMES OF EVENTS THAT WERE ATTENED BY ALL ISG FACULTY. IF REDUNDANT, LIST ONLY ONE NAME OF THE EVENT. --
SELECT DISTINCT e.name
FROM Event AS e
NATURAL JOIN Constitutes
NATURAL JOIN Person AS p
NATURAL JOIN Participated AS pt
WHERE p.firstname = 'Ramesh' AND p.lastname = 'Jain' AND pt.aid IN
    (
        SELECT pt.aid
        FROM Person AS p 
        NATURAL JOIN Participated AS pt
        WHERE p.firstname = 'Sharad' and p.lastname = 'Mehrotra' AND pt.aid IN

        (
            SELECT pt.aid
            FROM Person AS p 
            NATURAL JOIN Participated AS pt
            WHERE p.firstname = 'Nalini' AND p.lastname = 'Venkatasubramanian' AND pt.aid IN

            (
                SELECT pt.aid
                FROM Person AS p 
                NATURAL JOIN Participated AS pt
                WHERE p.firstname = 'Chen' AND p.lastname = 'Li' AND pt.aid IN

                (
                    SELECT pt.aid
                    FROM Person AS p 
                    NATURAL JOIN Participated AS pt
                    WHERE p.firstname = 'Mike' AND p.lastname = 'Carey'
                )
            )
        )
    );


-- LIST SENSORS ID AND NAME THAT HAVE NO PRODUCED ANY OBSERVATION OVER THE PAST MONTH, ASSUMING TODAY IS 12/01/16. --
SELECT s.sid,
       s.name
FROM Sensor AS s
WHERE s.sid NOT IN (
                       SELECT df.sid 
                       FROM DerivedFrom AS df
                       WHERE DATE(df.timestamp) BETWEEN '2016-11-01' AND '2016-12-01'
                   );


-- LIST SENSORS ID WITH NAME AND THE NUMBER OF ACTIVITIES DERIVED FROM OBSERVATION BASED ON THIS SENSOR, COUNTING EACH ACTIVITY ONCE FOR EACH SENSOR. --
SELECT s.sid,
       s.name,
       COUNT(DISTINCT a.aid) AS quantity
FROM Sensor AS s
NATURAL JOIN DerivedFrom
NATURAL JOIN Activity AS a
GROUP BY s.sid;


-- LIST AVERAGE NUMBER OF SENSORS PER SENSOR PLATFORM --
SELECT AVG(sensorCount) AS averageCount
FROM (
        SELECT
     )


-- List​ ​average​ ​number​ ​of​ ​sensors​ ​per​ ​sensor​ ​platform. -- 
SELECT AVG(count) AS averageCount
FROM (
         SELECT COUNT(hs.sid) AS count
         FROM hasSensor AS hs
         GROUP BY hs.spid
     ) AS sensorCount;


-- Retrieve images from all the video cameras in DBH that are in the office rooms on 12/24/15 from 1:00 - 2:00PM. --
SELECT ri.image
FROM Building b
NATURAL JOIN PartOf
NATURAL JOIN Room AS r
NATURAL JOIN FixedPlatform
NATURAL JOIN hasSensor
NATURAL JOIN RawImage AS ri
WHERE b.name = 'DBH' AND r.isOffice = 1 AND ri.tstamp BETWEEN '2015-12-24 13:00:00' AND '2015-12-24 14:00:00';
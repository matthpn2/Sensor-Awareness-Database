-- VISITORS VIEWS with VERIFICATION --
CREATE VIEW visitors AS
    SELECT a.aid, 
           a.type,
           COUNT(*) AS number_of_people
    FROM PartOf
    NATURAL JOIN Building AS b
    NATURAL JOIN TookPlace
    NATURAL JOIN Activity AS a
    NATURAL JOIN Participated
    WHERE a.confidence >= 3 AND b.name = 'DBH'
    GROUP BY a.aid, a.type;

SELECT * FROM visitors;

-- ANALYSTS VIEWS with VERIFICATION --
CREATE VIEW analysts AS
    SELECt r.isoffice,
           r.ismeetingroom,
           COUNT(*) AS number_of_activities
    FROM Activity AS a,
         Participated AS p,
         TookPlace AS tp,
         Building AS b,
         PartOf AS po,
         Room AS r,
         Constitutes
    WHERE b.name = 'DBH' AND po.bid = b.bid AND po.loid = tp.loid AND r.loid = tp.loid AND tp.aid = a.aid AND p.aid = a.aid
    GROUP BY r.loid, r.isoffice, r.ismeetingroom;

SELECT * FROM analysts;

-- BUILDING MANAGERS VIEW and VERIFICATION --
CREATE VIEW building_managers AS 
    SELECT p.pid,
           COUNT(*) AS number_of_events,
           SUM( (TIMESTAMPDIFF(SECOND, e.starttime, e.endtime) / 3600) ) AS duration
    FROM Participated AS p, Activity AS a, Constitutes AS c, Event​ AS e
    WHERE p.aid = a.aid AND c.aid = a.aid AND c.eid = e.eid AND ( TIMESTAMPDIFF(YEAR, e.starttime, current_timestamp()) < 3 )
    GROUP BY p.pid;

SELECT * FROM building_managers;
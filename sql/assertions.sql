-- CONSTRAINTS TABLE --
CREATE TABLE students
    (
        sid INT NOT NULL,
        gpa FLOAT CHECK(gpa BETWEEN 0.0 AND 4.0),
        major ENUM('CS', 'EECS'),
        PRIMARY KEY(sid)
    );

CREATE TABLE courses
    (
        cid INT NOT NULL,
        level ENUM('Introductory', 'Advanced'),
        PRIMARY KEY(cid)
    );

CREATE TABLE taken_courses
    (
        sid INT NOT NULL,
        cit INT NOT NULL,
        PRIMARY KEY(sid, cid),
        FOREIGN KEY(sid) REFERENCES students(sid) ON DELETE CASCADE,
        FOREIGN KEY(cid) REFERENCES course(cid) ON UPDATE CASCADE
    );


-- ASSERTION TABLE -- 
CREATE ASSERTION advanced_student CHECK
    (
        NOT EXISTS
            (
                SELECT *
                FROM taken_courses 
                NATURAL JOIN students AS s
                NATURAL JOIN courses AS c
                WHERE s.gpa < 3.0 AND c.level = 'Advanced'
            )
    );
/*
	Brendan Rooney
	CSC 451 Section 701
	Assignment 5
	November 2, 2016
	*/


DROP TABLE ENROLLMENT;
DROP TABLE SECTION;

CREATE TABLE SECTION(
    SectionID   CHAR(5), 
    CourseNumber    VARCHAR(7), 
    CourseName  VARCHAR(30), 
    SectionNumber NUMBER(3), 
    InstructorName  VARCHAR(20),
    
    CONSTRAINT PK_SECTION
        PRIMARY KEY (SectionID));
    
    INSERT INTO SECTION
        VALUES ('32468', 'CSC 451', 'Database Design', 701, 'Schwabe');
        
    INSERT INTO SECTION
        VALUES ('32534', 'CSC 552', 'Concurrent Software Dev',  710, 'Jagadeesan');
        
    INSERT INTO SECTION
        VALUES ('33136', 'SE 480', 'Software Architecture', 701, 'Badr');
        
    INSERT INTO SECTION
        VALUES ('21872', 'SE 477', 'Project Management', 801, 'Streeter');
        
    INSERT INTO SECTION
        VALUES ('21867', 'SE 433', 'Software Testing', 901, 'Jia');
        
    INSERT INTO SECTION
        VALUES ('23011', 'CSC 503', 'Parallel Algorithms', 810, 'DiPierro');

CREATE TABLE ENROLLMENT(
    StudentID   CHAR(7), 
    FirstName   VARCHAR(20), 
    LastName    VARCHAR(20), 
    SectionID   CHAR(5),
    
    CONSTRAINT PK_ENROLLMENT
        PRIMARY KEY (StudentID, SectionID),
        
    CONSTRAINT FK_ENROLLMENT_SECTION
        FOREIGN KEY (SectionID) 
            REFERENCES SECTION(SectionID));
    
    
    INSERT INTO ENROLLMENT
        VALUES ('2589631', 'Brendan', 'Rooney', '32468');
        
    INSERT INTO ENROLLMENT (StudentID, SectionID)
        VALUES ('2589631', '32534');
        
    INSERT INTO ENROLLMENT
        VALUES ('2589543', 'Katrina', 'Froehlich', '33136');
        
    INSERT INTO ENROLLMENT (StudentID, SectionID)
        VALUES ('2589543', '21872');
        
    INSERT INTO ENROLLMENT
        VALUES ('2587346', 'Corey', 'Kluber', '21867');
        
    INSERT INTO ENROLLMENT (StudentID, SectionID)
        VALUES ('2587346', '23011');
        
SELECT * FROM SECTION;
SELECT * FROM ENROLLMENT;

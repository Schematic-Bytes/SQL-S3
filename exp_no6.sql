DROP TABLE STUDENT;
CREATE TABLE STUDENT
    (RollNo INT(10), Name VARCHAR(20), Mark INT(10));
INSERT INTO STUDENT (RollNo, Name, Mark) 
VALUES (1,'Anil',45), 
    (2,'Manu',30), 
    (3,'Lalu',43);
SELECT * FROM STUDENT;
CREATE VIEW Passed_Students AS SELECT * FROM STUDENT WHERE MARK > 39;
SELECT * FROM Passed_Students;
-- DROP TABLE EMPLOYEE;
-- DROP TABLE PROJECT;
-- DROP TABLE WORK;
CREATE TABLE EMPLOYEE
    (ENO INT UNIQUE,ENAME VARCHAR(20)NOT NULL,
    ADDRESS VARCHAR(20)NOT NULL,
    BASIC_SAL INT (6)NOT NULL,JOB VARCHAR(20)NOT NULL,
    DNO INT(3)NOT NULL);
CREATE TABLE PROJECT
    (PNO INT UNIQUE,PNAME VARCHAR(10)NOT NULL,NO_OF_STAFF INT NOT NULL);
CREATE TABLE WORK
    (PNO INT NOT NULL,ENO INT NOT NULL,PJOB VARCHAR(15)NOT NULL);
INSERT INTO EMPLOYEE(ENO,ENAME,ADDRESS,BASIC_SAL,JOB,DNO)
VALUES(1, 'SaravanaKumar', 'GandhiNagar', 8000, 'Manager', 10),
    (2, 'Mahendran', 'RainbowColony', 5000, 'Supervisor', 10),
    (3, 'RajKumar', 'EastCoastRoad', 10000, 'Professor', 2),
    (4, 'Shirley', 'KKnagar', 8000, 'AsstManager', 3);
INSERT INTO PROJECT(PNO,PNAME,NO_OF_STAFF)
VALUES(1, 'DBMS', 2),
    (2, 'COMPILER', 3),
    (3, 'CI', 1);
INSERT INTO WORK(PNO, ENO, PJOB)
VALUES(1, 1, 'Programmer'),
    (2, 1, 'Analyst'),
    (1, 2, 'Analyst'),
    (2, 2, 'Programmer');
SELECT ENAME FROM EMPLOYEE WHERE DNO NOT IN(SELECT DNO FROM EMPLOYEE WHERE ENAME ='SaravanaKumar');
SELECT ENAME, DNO FROM EMPLOYEE WHERE DNO = (SELECT DNO FROM EMPLOYEE WHERE ENAME ='RajKumar');
SELECT ENAME FROM EMPLOYEE WHERE ENO IN(SELECT ENO FROM WORK WHERE PNO = (SELECT PNO FROM PROJECT WHERE PNAME = 'DBMS')) ORDER BY ENAME;    
SELECT ENAME, BASIC_SAL FROM EMPLOYEE WHERE DNO = 2 AND
BASIC_SAL > (SELECT MAX(BASIC_SAL) FROM EMPLOYEE WHERE DNO = 10)ORDER BY ENAME;
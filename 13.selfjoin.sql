CREATE DATABASE employes;
USE employes;

CREATE TABLE emp(
empid INT,
empname VARCHAR(10),
manid INT);

INSERT INTO emp(empid,empname,manid)
VALUES(	1, "Alice",NULL),
	(2,	"Bob",1),
	(3,	"Charlie",1),
	(4,	"David",2),
	(5,	"Eve",2);
    SELECT* FROM emp;
    SELECT 
    e1.empname AS Employee, e2.empname AS Manager
FROM 
    emp as e1
JOIN 
    emp as  e2
ON 
    e1.manid = e2.empid;

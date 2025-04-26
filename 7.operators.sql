CREATE DATABASE abcompany;
USE abcompany;

CREATE TABLE employes(
 id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary INT,
location VARCHAR(50));

INSERT INTO employes(id,name,age,department,salary,location)
VALUES(101,"raj",26,"IT",40000,"HYD"),
       (102,"ram",29,"HR",35000,"HYD"),
       (103,"jio",32,"MANAGER",50000,"MUMBAI"),
       (104,"abhi",32,"IT",42000,"MUMBAI"),
       (105,"san",25,"ADMIN",32000,"BANGALORU");
       

-- check table
SELECT *FROM employes;

-- LOGICAL OPT AND
SELECT*FROM employes WHERE location="HYD" AND age>=18;
-- OR OPT
SELECT*FROM employes WHERE location="HYD" OR salary>=40000;
-- NOT opt
SELECT*FROM employes WHERE department NOT IN ("IT");
SELECT*FROM employes WHERE department NOT IN ("IT","HR");
SELECT*FROM employes WHERE department OR location NOT IN ("IT","HYD") ;
-- IN opt
SELECT*FROM employes WHERE department or location IN ("IT","HYD");
-- null/is not null
SELECT*FROM employes WHERE department IS NOT NULL;
-- BITWISE OPT
-- SELECT*FROM employes WHERE department="IT" &&  age>= 18 ;


-- like opt 
SELECT*FROM employes WHERE name LIKE "R%"; -- remember its not casesenstive so caps or small no issue
 SELECT*FROM employes WHERE name LIKE "_A%"; 
 SELECT*FROM employes WHERE name LIKE "%R%";
 
 
 -- BETWEEN  OPT
 SELECT*FROM employes WHERE salary BETWEEN 35000 AND 50000 ;
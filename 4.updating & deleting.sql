CREATE DATABASE company;
USE company;

CREATE TABLE employes(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
location VARCHAR(50));

INSERT INTO employes(id,name,department,salary,location)
VALUES(101,"raj","IT",40000,"HYD"),
       (102,"ram","HR",35000,"HYD"),
       (103,"jio","MANAGER",50000,"MUMBAI"),
       (104,"abhi","IT",42000,"MUMBAI"),
       (105,"san","ADMIN",32000,"BANGALORU");

SELECT *FROM employes;
-- change admin salary to 33000( need to exit safe update for this)
UPDATE employes
SET salary = 33000
WHERE department = "ADMIN";
SET SQL_SAFE_UPDATES = 0;   -- there is no code change but in table the update has been reflected
/* deleting all HR data
   DELETE FROM employes
   where departemnt = "HR": (after running this all HR data will be removed from table) */

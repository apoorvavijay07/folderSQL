CREATE DATABASE comp;
USE comp;

CREATE TABLE emp(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary INT,
location VARCHAR(50));


INSERT INTO emp(id,name,age,department,salary,location)
VALUES (101,"raj",26,"IT",40000,"HYD"),
       (102,"ram",29,"HR",35000,"HYD"),
       (103,"jio",32,"MANAGER",50000,"MUMBAI"),
       (104,"abhi",32,"IT",42000,"MUMBAI"),
       (105,"san",25,"ADMIN",32000,"BANGALORU");
       
-- count total no of employes
SELECT COUNT(name) FROM emp;
-- sum of salaries
SELECT SUM(salary) FROM emp;
-- average age
SELECT AVG(age) FROM emp;
SELECT AVG(name) FROM emp; -- THIS GIVE U ZERO OR ERROR

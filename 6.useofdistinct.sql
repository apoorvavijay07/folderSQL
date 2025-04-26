CREATE DATABASE  xyzcompany;
USE xyzcompany;

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
       
SELECT* FROM employes;
       
SELECT DISTINCT age FROM employes;
       
       
CREATE DATABASE companyy;
USE companyy;

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
       
-- need to add new column AGE:

ALTER TABLE employes
ADD age INT DEFAULT 18;

-- chech table after every change
SELECT *FROM employes;

-- droping a column
ALTER TABLE employes
DROP COLUMN age;

-- modifing datatype
-- BEFORE MODIFING IM ADDING AGE COLUMN ONCE AGAIN
ALTER TABLE employes
ADD age INT DEFAULT 18;
ALTER TABLE employes
MODIFY age VARCHAR(3);

-- CHANGING NAME OF COLUMN
ALTER TABLE employes
CHANGE age emp_age INT;

-- RENAMING a universal approach to change any name (table , database,column....)
-- ALTER TABLE employes is not required to change name of table
RENAME TABLE employes to employees;

-- RENAME DATABASE companyy to companyyy (it is possible but not in all servers and need to accept few secutity requests)

CREATE DATABASE school;
USE school;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50));
CREATE TABLE course(
cid INT PRIMARY KEY,
id INT,
FOREIGN KEY (id) REFERENCES student(id));
INSERT INTO student(id, name)
VALUES (001,"abc"),
        (002,"cdf"),
        (003,"erg");
        
        USE school;
        SHOW TABLES;
        SELECT* FROM student;
        SELECT* FROM course;
        
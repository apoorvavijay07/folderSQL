CREATE DATABASE college;
USE college;
CREATE TABLE IF NOT EXISTS student1(
     rollno INT UNIQUE,
     age int,
     Naame VARCHAR(50));
-- checking usage of unique constraints
INSERT INTO  student1( rollno, age, Naame)
VALUES (1,15,"ABC"),
       (12,15,"ABC");

-- checking usage of Null and check constraints
CREATE TABLE students2(
         rollno INT NOT NULL,
         age INT CHECK(age>=18));
INSERT INTO students2( rollno, age)
VALUES (01,19),
	   (02,21),
       (03,18);
 
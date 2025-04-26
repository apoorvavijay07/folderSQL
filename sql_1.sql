CREATE DATABASE instadb;
use instadb;
create table if not exists users(
   userID INT PRIMARY KEY,
   userName VARCHAR(50),
   useremail VARCHAR(100)
   );
   create table if not exists posts(
   postID INT PRIMARY KEY,
   userID INT ,
   caption VARCHAR(100)
   );
   INSERT INTO users( userID, userName , useremail)
   VALUES (1, "ram","ram@email"),
   (2,"raj","raj@email.com"),
   (3,"rav","rav@gmail");
    INSERT INTO posts( postID, userID , caption)
   VALUES (11, 1,"fire"),
   (12,2,"air"),
   (13,3,"voka");
   
   show tables;
    
 
    select* from users;
       select* from posts;
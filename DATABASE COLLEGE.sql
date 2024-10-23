CREATE DATABASE COLLEGE;
USE COLLEGE;
CREATE TABLE STUDENT(ROLLNO INT PRIMARY KEY,NAME VARCHAR(50),
                      MARKS INT NOT NULL,
                      GRADE VARCHAR(1),
                      CITY VARCHAR(20));
INSERT INTO student(ROLLNO,NAME,MARKS,GRADE,CITY) VALUES(101,"ANIL",78,"C","PUNE"),
                        (102,"BHUMIKA",93,"A","MUMBAI"),
                        (103,"CHETAN",85,"B","MUMBAI"),
                        (104,"DHRUV",96,"A","DELHI"),
                        (105,"EMANUL",12,"F","DELHI"),
                        (106,"FARAH",82,"B","DELHI");
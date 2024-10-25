USE JOIN1;

CREATE TABLE STUDENTS_2023(STUDENT_ID INT PRIMARY KEY,STUDENT_NAME VARCHAR(100),MAJOR VARCHAR(100));
INSERT INTO STUDENTS_2023(STUDENT_ID,STUDENT_NAME,MAJOR)
               VALUES(1,"ALICE","COMPUTER SCIENCE"),
               (2,"BOB","MATHEMATICS"),(3,"CHARLIE","PHYSICS");
               
CREATE TABLE STUDENTS_2024(STUDENT_ID INT PRIMARY KEY,STUDENT_NAME VARCHAR(100),
 MAJOR VARCHAR(100));
 
 INSERT INTO STUDENTS_2024(STUDENT_ID,STUDENT_NAME,MAJOR)
               VALUES(2,"BOB","MATHEMATICS"),
                     (3,"CHARLIE","PHYSICS"),
                     (4,"DAVID","CHEMISTRY"),
                     (5,"EVE","BIOLOGY");
SELECT * FROM STUDENTS_2023 UNION SELECT * FROM STUDENTS_2024;

SELECT * FROM STUDENTS_2023 INTERSECT SELECT * FROM STUDENTS_2024;

SELECT * FROM STUDENTS_2023 UNION ALL SELECT * FROM STUDENTS_2024;

SELECT * FROM STUDENTS_2023 EXCEPT SELECT * FROM STUDENTS_2024;
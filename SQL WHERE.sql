USE COLLEGE;
SELECT * FROM STUDENT WHERE MARKS>80;

SELECT * FROM STUDENT WHERE CITY="MUMBAI";

SELECT ROLLNO,NAME,CITY FROM STUDENT WHERE CITY="DELHI";

SELECT NAME,MARKS,GRADE FROM STUDENT WHERE GRADE="A";

SELECT * FROM  STUDENT WHERE ROLLNO >= 102 AND ROLLNO<=105;

#MARKES GREATER 80 AAYIRIKKNM CITY MUMABI AAYITULLA ENTIRE DATA VENM?
SELECT * FROM STUDENT WHERE MARKS>80 AND CITY="MUMBAI";

#ORU CONDITION USE CHEYYAN VENDIYAAN WHERE CLOSE USE CHEYYUNNATH

SELECT * FROM  STUDENT WHERE MARKS >90 OR CITY="DELHI";
use college;
select * from student where marks between 80 and 90;

select * from student where rollno between 102 and 105;

select * from student where city in ("mumbai","pune");

select * from student where city not in ("mumbai","pune");

select * from student where name like "a%";
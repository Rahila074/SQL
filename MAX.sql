USE COLLEGE;
SELECT * FROM COURSE;
SELECT * FROM COURSE LIMIT 3;
select * FROM COURSE LIMIT 3 OFFSET 1;
# OFFSET MEANS SKIPE CHEYYAN


SELECT * FROM COURSE  ORDER BY START_DATE;

SELECT * FROM COURSE ORDER BY START_DATE ASC;
SELECT * FROM COURSE ORDER BY START_DATE DESC;

SELECT * FROM COURSE ORDER BY DURATION DESC LIMIT  3;

SELECT * FROM COURSE ORDER BY FEES  DESC LIMIT 1 OFFSET 1;

# ODER BY MEANS SORT CHEYYAN

USE COLLEGE;
SELECT MAX(DURATION) FROM COURSE;
SELECT MIN(MARKS) FROM STUDENT;
SELECT SUM(MARKS) FROM STUDENT; 

SELECT AVG(MARKS) FROM STUDENT;
SELECT COUNT(MARKS) FROM STUDENT;

SELECT COUNT(MARKS) AS C FROM STUDENT;
# AS MEANS RENAME THE HEADING

SELECT ROLLNO AS SNO FROM STUDENT;

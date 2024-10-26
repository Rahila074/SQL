USE PAYMENT;

CREATE TABLE EMPLOYER(EMPLOYEE_ID INT PRIMARY KEY,NAME VARCHAR(50),DEPARTMENT CHAR(70),
                                              SALARY INT, MANAGER_ID CHAR(60) );
INSERT INTO EMPLOYER(EMPLOYEE_ID,NAME,
                      DEPARTMENT,
                      SALARY,MANAGER_ID)
			VALUES(1,"ALICE",1,60000,NULL),
                  (2,"BOB",1,55000,1),
                  (3,"CHARLIE",2,70000,1),
                  (4,"DAVID",2,72000,3),
                  (5,"EVE",1,48000,2),
                  (6,"FRANK",3,50000,1);
                  
SELECT * FROM EMPLOYER;

#FIND EMPLOYEE WHO EARN MORE THAN AVEREGE SALARY OF ALL EMPLOYEES?
SELECT * FROM EMPLOYER WHERE SALARY>(SELECT AVG(SALARY) FROM EMPLOYER);

#LIST OF THE EMPLOYEES WHO WORK IN THE SAME DEPARTMENT OF "ALICE"?
SELECT * FROM EMPLOYER
WHERE DEPARTMENT = (SELECT DEPARTMENT FROM EMPLOYER WHERE NAME = "ALICE")
AND NAME <> "ALICE";

#FIND EMPLOYEES WHOSE SALARY REATER THAN THE SALARY OF THEIR MANAGER?

SELECT e.*
FROM employer e
JOIN employer m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary
LIMIT 0, 1000;

SELECT m.name
FROM employer m
JOIN employer e ON m.employee_id = e.manager_id
GROUP BY m.employee_id, m.name
HAVING COUNT(e.employee_id) > 1;
# Find the highest salary in each department.
SELECT department, MAX(salary) AS highest_salary
FROM employer
GROUP BY department;


#Find the highest salary in each department.
SELECT department, MAX(salary) AS highest_salary
FROM employer
GROUP BY department;

#List the employees who do not have a manager (i.e., their manager_id is NULL).
SELECT *
FROM employer
WHERE salary = (SELECT salary FROM employer WHERE name = 'David');

#Find departments where the average salary is greater than 60,000.

SELECT department, AVG(salary) AS average_salary
FROM employer
GROUP BY department
HAVING AVG(salary) > 60000;


#Find the name of the employee who reports to 'Alice'.
SELECT e.name
FROM employer e
JOIN employer m ON e.manager_id = m.employee_id
WHERE m.name = 'Alice';







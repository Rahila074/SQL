USE PAYMENT;

CREATE TABLE DEPARTMENT(DEP_ID INT PRIMARY KEY,DEP_NAME VARCHAR(50));

INSERT INTO DEPARTMENT(DEP_ID,DEP_NAME)
                        VALUES(101,"IT"),
                              (102,"HR"),
                              (103,"MARKETING"),
                              (104,"SALES");

CREATE TABLE EMPLOYEE(ID INT PRIMARY KEY,NAME VARCHAR(50),DEP_ID VARCHAR(50),SALARY INT);
INSERT INTO EMPLOYEE(ID,NAME,DEP_ID,SALARY)
		    VALUES(1,"JHON DOE",101,60000),
				  (2,"JAIN",102,750000),
                  (3,"ALICE",103,50000),
                  (4,"BOB",104,55000),
                  (5,"CHARLIE",105,6500);
                  
#Write a query to display each employee's name along with their department name."INNER JOIN".
SELECT NAME,DEP_NAME FROM  EMPLOYEE JOIN DEPARTMENT ON EMPLOYEE.DEP_ID =  DEPARTMENT.DEP_ID;

#2.  Write a query to display all employees, including 
#those who don't have a corresponding department in the Departments table.
# Show the employee's name, department ID, and department name."LEFT JOIN".

 SELECT NAME,DEP_NAME FROM  EMPLOYEE LEFT JOIN DEPARTMENT ON EMPLOYEE.DEP_ID =  DEPARTMENT.DEP_ID;
 
 #3.Display all departments along with the names of employees in each department. Include departments that have no employees.
 SELECT NAME,DEP_NAME FROM  EMPLOYEE LEFT JOIN DEPARTMENT ON EMPLOYEE.DEP_ID =  DEPARTMENT.DEP_ID;
 
#4.List all employees and departments, even if there's no 
#match between them in the Employees and Departments tables.

 SELECT NAME,DEP_NAME FROM  EMPLOYEE LEFT JOIN DEPARTMENT ON EMPLOYEE.DEP_ID =  DEPARTMENT.DEP_ID
 UNION  SELECT NAME,DEP_NAME FROM  EMPLOYEE LEFT JOIN DEPARTMENT ON EMPLOYEE.DEP_ID =  DEPARTMENT.DEP_ID;
 


 
 




 





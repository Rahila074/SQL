USE SALES;

CREATE VIEW FIRST_VIEW AS SELECT * FROM CUSTOMERS;
SELECT * FROM CUSTOMERS;

CREATE VIEW SALARY_VIEW AS SELECT * FROM CUSTOMERS WHERE SALARY>5000;
SELECT * FROM SALARY_VIEW;
SET SQL_SAFE_UPDATES = 0;
UPDATE FIRST_VIEW SET  AGE=35 WHERE NAME = "RAMESH";

SELECT * FROM FIRST_VIEW;
SELECT * FROM CUSTOMERS;

DROP VIEW SALARY_VIEW;
RENAME TABLE FIRST_VIEW TO RE_VIEW;



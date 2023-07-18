CREATE DATABASE sample;

USE sample;

 CREATE TABLE departments ( 
 department_id INTEGER PRIMARY KEY, 
 department_name VARCHAR(30),
 location_id INTEGER
 ) ;
 
  CREATE TABLE employees (
  employee_id INTEGER, 
  first_name VARCHAR(20),
  last_name VARCHAR(25),
  email VARCHAR(25),
  phone_number VARCHAR(20),
  hire_date DATE,
  job_id VARCHAR(10),
  salary INTEGER,
  commission_pct INTEGER,
  manager_id INTEGER,
  department_id INTEGER,    
  
  constraint pk_emp primary key (employee_id),
  constraint fk_deptno 
  foreign key (department_id) 
  references departments(department_id)  
  ) ;
  
## Insert insto Departments table
   INSERT INTO departments VALUES ( 20,'Marketing',  180);
   INSERT INTO departments VALUES ( 30,'Purchasing',  1700);
   INSERT INTO departments VALUES ( 40, 'Human Resources',  2400);
   INSERT INTO departments VALUES ( 50, 'Shipping',  1500);
   INSERT INTO departments VALUES ( 60 , 'IT',  1400);
   INSERT INTO departments VALUES ( 70, 'Public Relations',  2700);
   INSERT INTO departments VALUES ( 80 , 'Sales',  2500 );
   INSERT INTO departments VALUES ( 90 , 'Executive',  1700);
   INSERT INTO departments VALUES ( 100 , 'Finance',  1700);
   INSERT INTO departments VALUES ( 110 , 'Accounting',  1700);
   
## Insert into Employees table
  INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17' , 'AD_PRES', 24000 , NULL, NULL, 20);
  INSERT INTO employees VALUES (101, 'Neena' , 'Kochhar' , 'NKOCHHAR' , '515.123.4568' , '1989-11-21' , 'AD_VP' , 17000 , NULL , 100 , 20);
  INSERT INTO employees VALUES (102 , 'Lex' , 'De Haan' , 'LDEHAAN' , '515.123.4569' , '1993-09-12' , 'AD_VP' , 17000 , NULL , 100 , 30);
  INSERT INTO employees VALUES (103 , 'Alexander' , 'Hunold' , 'AHUNOLD' , '590.423.4567' , '1990-09-30', 'IT_PROG' , 9000 , NULL , 102 , 60);
  INSERT INTO employees VALUES (104 , 'Bruce' , 'Ernst' , 'BERNST' , '590.423.4568' , '1991-05-21',  'IT_PROG' , 6000 , NULL , 103 , 60);
  INSERT INTO employees VALUES (105 , 'David' , 'Austin' , 'DAUSTIN' , '590.423.4569' , '1997-06-25',  'IT_PROG' , 4800 , NULL , 103 , 60);
  INSERT INTO employees VALUES (106 , 'Valli' , 'Pataballa' , 'VPATABAL' , '590.423.4560' , '1998-02-05',  'IT_PROG' , 4800 , NULL , 103 , 40);
  INSERT INTO employees VALUES (107 , 'Diana' , 'Lorentz' , 'DLORENTZ' , '590.423.5567' , '1999-02-09',  'IT_PROG' , 4200 , NULL , 103 , 40);
  INSERT INTO employees VALUES (108 , 'Nancy' , 'Greenberg' , 'NGREENBE' , '515.124.4569' , '1994-08-17',  'FI_MGR' , 12000 , NULL , 101 , 100);
  INSERT INTO employees VALUES (109 , 'Daniel' , 'Faviet' , 'DFAVIET' , '515.124.4169' , '1994-08-12',  'FI_ACCOUNT' , 9000 , NULL , 108 , 170);
  INSERT INTO employees VALUES (110 , 'John' , 'Chen' , 'JCHEN' , '515.124.4269' , '1997-04-09',  'FI_ACCOUNT' , 8200 , NULL , 108 , 170);
  INSERT INTO employees VALUES (111 , 'Ismael' , 'Sciarra' , 'ISCIARRA' , '515.124.4369' , '1997-02-01',  'FI_ACCOUNT' , 7700 , NULL , 108 , 160);
  INSERT INTO employees VALUES (112 , 'Jose Manuel' , 'Urman' , 'JMURMAN' , '515.124.4469' , '1998-06-03', 'FI_ACCOUNT' , 7800 , NULL , 108 , 150);
  INSERT INTO employees VALUES (113 , 'Luis' , 'Popp' , 'LPOPP' , '515.124.4567' , '1999-12-07',  'FI_ACCOUNT' , 6900 , NULL , 108 , 140);
  INSERT INTO employees VALUES (114 , 'Den' , 'Raphaely' , 'DRAPHEAL' , '515.127.4561' , '1994-11-08',  'PU_MAN' , 11000 , NULL , 100 , 30);
  INSERT INTO employees VALUES (115 , 'Alexander' , 'Khoo' , 'AKHOO' , '515.127.4562' , '1995-05-12',  'PU_CLERK' , 3100 , NULL , 114 , 80);
  INSERT INTO employees VALUES (116 , 'Shelli' , 'Baida' , 'SBAIDA' , '515.127.4563' ,'1997-12-13', 'PU_CLERK' , 2900 , NULL , 114 , 70);
  INSERT INTO employees VALUES (117 , 'Sigal' , 'Tobias' , 'STOBIAS' , '515.127.4564' , '1997-09-10', 'PU_CLERK' , 2800 , NULL , 114 , 30);
  INSERT INTO employees VALUES (118 , 'Guy' , 'Himuro' , 'GHIMURO' , '515.127.4565' , '1998-01-02',  'PU_CLERK' , 2600 , NULL , 114 , 60);
  INSERT INTO employees VALUES (119 , 'Karen' , 'Colmenares' , 'KCOLMENA' , '515.127.4566' , '1999-04-08',  'PU_CLERK' , 2500 , NULL , 114 , 130);
  INSERT INTO employees VALUES (120 , 'Matthew' , 'Weiss' , 'MWEISS' , '650.123.1234' ,'1996-07-18',  'ST_MAN' , 8000 , NULL , 100 , 50);
  INSERT INTO employees VALUES (121 , 'Adam' , 'Fripp' , 'AFRIPP' , '650.123.2234' , '1997-08-09',  'ST_MAN' , 8200 , NULL , 100 , 50);
  INSERT INTO employees VALUES (122 , 'Payam' , 'Kaufling' , 'PKAUFLIN' , '650.123.3234' ,'1995-05-01',  'ST_MAN' , 7900 , NULL , 100 , 40);
  INSERT INTO employees VALUES (123 , 'Shanta' , 'Vollman' , 'SVOLLMAN' , '650.123.4234' , '1997-10-12',  'ST_MAN' , 6500 , NULL , 100 , 50);
  INSERT INTO employees VALUES (124, 'Kevin' , 'Mourgos' , 'KMOURGOS' , '650.123.5234' , '1999-11-12',  'ST_MAN' , 5800 , NULL , 100 , 80);
  INSERT INTO employees VALUES (125, 'Julia' , 'Nayer' , 'JNAYER' , '650.124.1214' , '1997-07-02',  'ST_CLERK' , 3200 , NULL , 120 , 50);
  INSERT INTO employees VALUES (126, 'Irene' , 'Mikkilineni' , 'IMIKKILI' , '650.124.1224' , '1998-11-12', 'ST_CLERK' , 2700 , NULL , 120 , 50);
  INSERT INTO employees VALUES (127, 'James' , 'Landry' , 'JLANDRY' , '650.124.1334' , '1999-01-02' , 'ST_CLERK' , 2400 , NULL , 120 , 90);
  INSERT INTO employees VALUES (128, 'Steven' , 'Markle' , 'SMARKLE' , '650.124.1434' , '2000-03-04' , 'ST_CLERK' , 2200 , NULL , 120 , 50);
  INSERT INTO employees VALUES (129, 'Laura' , 'Bissot' , 'LBISSOT' , '650.124.5234' ,'1997-09-10' , 'ST_CLERK' , 3300 , NULL , 121 , 50);
  INSERT INTO employees VALUES (130, 'Mozhe' , 'Atkinson' , 'MATKINSO' , '650.124.6234' , '1997-10-12' , 'ST_CLERK' , 2800 , NULL , 121 , 110);
  
  
## 1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S

 SELECT first_name, last_name, job_id, salary
 FROM employees
 WHERE first_name LIKE "S%";

## 2. Write a query to select employee with the highest salary
SELECT * 
FROM employees
WHERE salary = ( 
SELECT MAX(salary)
FROM employees
);

         -- ALTERNATIVELY
SELECT first_name, last_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary)
FROM employees
);

SELECT first_name, last_name, salary
FROM employees
WHERE salary = ( SELECT MAX(salary) FROM employees);

## 3. Select employee with the second highest salary

SELECT *
FROM employees
WHERE salary = (
  SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
  )
);
## 4. Fetch employees with 2nd or 3rd highest salary
SELECT *
 FROM employees
 ORDER BY salary DESC
 LIMIT 2, 2;

## 5. Write a query to select employees and their corresponding managers and their salaries

SELECT e.first_name AS employee_first_name, e.last_name AS employee_last_name, e.salary AS employee_salary,
       m.first_name AS manager_first_name, m.last_name AS manager_last_name, m.salary AS manager_salary
FROM employees e
INNER JOIN employees m 
ON e.manager_id = m.employee_id;

           --   ALTERNATIVELY
SELECT e.first_name AS employees_firstname, e.last_name AS employees_lastname, e.salary AS employees_salary,
m.first_name AS manager_firstname, m.last_name AS manager_lastname, m.salary AS manager_salary
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;           

## 6. Write a query to show count of employees under each manager in descending order

SELECT manager_id, COUNT(*) AS employee_count
FROM employees
GROUP BY manager_id
ORDER BY employee_count DESC;

## 7. Find the count of employees in each department

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC;

## 8. Get the count of employees hired year wise

SELECT YEAR (hire_date) AS hire_year, COUNT(*) AS employee_count
 FROM employees
 GROUP BY hire_date
 ORDER BY hire_year;
 
                                   --  ALTERNATIVELY
SELECT YEAR (hire_date) AS higher_year, COUNT(employee_id) AS employee_count
FROM employees
GROUP BY hire_date
ORDER BY employee_count DESC;
## 9. Find the salary range of employees

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees;

## 10. Write a query to divide people into three groups based on their salaries

SELECT employee_id, salary,
  CASE 
    WHEN salary < 12000 THEN 'Group A'
    WHEN salary >= 15000 AND salary < 24000 THEN 'Group B'
    ELSE 'Group C'
  END AS salary_group
FROM employees;

## 11. Select the employees whose first_name contains “an”

SELECT employee_id, first_name
FROM employees
WHERE first_name LIKE '%an%';

## 12. Select employee first name and the corresponding phone number in the format (_ _ _)-(_ _ _)-(_ _ _ _)

SELECT first_name, CONCAT('(', SUBSTRING(phone_number, 1, 3), ')-', SUBSTRING(phone_number, 4, 3), '-', SUBSTRING(phone_number, 7, 4)) AS formatted_phone
FROM employees;

## 13. Find the employees who joined in August, 1994.

SELECT employee_id, hire_date
FROM employees
WHERE MONTH(hire_date) = 8 AND YEAR(hire_date) = 1994;

## 14. Write an SQL query to display employees who earn more than the average salary in that company

SELECT employee_id, first_name, Salary
 FROM employees
 WHERE salary >= (SELECT AVG(salary) FROM employees);


## 15. Find the maximum salary from each department.

SELECT department_id, MAX(salary) AS max_salary
FROM employees
GROUP BY department_id;

## 16. Write a SQL query to display the 5 least earning employees

SELECT employee_id, salary
FROM employees
ORDER BY salary ASC
LIMIT 5;

## 17. Find the employees hired in the 80s

SELECT employee_id, first_name, hire_date
FROM employees
WHERE YEAR (hire_date) >= 1980 AND YEAR(hire_date) <= 1989;

              -- ALTERNATIVELY
SELECT first_name, last_name, hire_date
FROM employees
WHERE  YEAR (hire_date) BETWEEN 1980 AND 1989;              
              

## 18. Display the employees first name and the name in reverse order

SELECT first_name, CONCAT(REVERSE(first_name), ' ', REVERSE(last_name)) AS reverse_name
FROM employees;

           -- ALTERNATIVELY
SELECT first_name, CONCAT(REVERSE(first_name)) AS reverse_name
FROM employees;

## 19. Find the employees who joined the company after 15th of the month

SELECT employee_id, first_name, hire_date
FROM employees
WHERE DAY(hire_date) > 15;

## 20. Display the managers and the reporting employees who work in different departments

SELECT M.employee_id AS manager_id, E.employee_id AS reporting_id, E.first_name AS reporting_name
FROM employees M
JOIN employees E ON M.employee_id = E.manager_id
WHERE M.department_id <> E.department_id;

      --    Alternatively
SELECT m.employee_id AS reporting_manager, e.employee_id AS reporting_employee, e.first_name AS reporting_name
FROM employees m
JOIN employees e
ON m.employee_id = e.manager_id
WHERE m.department_id != e.employee_id;      

## 1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S
## 2. Write a query to select employee with the highest salary
## 3. Select employee with the second highest salary
## 4. Fetch employees with 2nd or 3rd highest salary
## 5. Write a query to select employees and their corresponding managers and their salaries
## 6. Write a query to show count of employees under each manager in descending order
## 7. Find the count of employees in each department
## 8. Get the count of employees hired year wise
## 9. Find the salary range of employees
## 10. Write a query to divide people into three groups based on their salaries
## 11. Select the employees whose first_name contains “an”
## 12. Select employee first name and the corresponding phone number in the format (_ _ _)-(_ _ _)-(_ _ _ _)
## 13. Find the employees who joined in August, 1994.
## 14. Write an SQL query to display employees who earn more than the average salary in that company
## 15. Find the maximum salary from each department.
## 16. Write a SQL query to display the 5 least earning employees
## 17. Find the employees hired in the 80s
## 18. Display the employees first name and the name in reverse order
## 19. Find the employees who joined the company after 15th of the month
## 20. Display the managers and the reporting employees who work in different departments

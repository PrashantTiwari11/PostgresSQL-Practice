CREATE TABLE EMPLOYEES (
EMP_ID INT,
EMP_NAME VARCHAR(50),
DEPARTMENT VARCHAR(30),
SALARY I
);

INSERT INTO employees VALUES
(101, 'Riya', 'HR', 30000, 'Delhi', 2),
(102, 'Aman', 'IT', 55000, 'Noida', 4),
(103, 'Priya', 'Sales', 40000, 'Delhi', 3),
(104, 'Rahul', 'IT', 60000, 'Lucknow', 5),
(105, 'Neha', 'HR', 35000, 'Noida', 2),
(106, 'Karan', 'Sales', 45000, 'Delhi', 4),
(107, 'Anjali', 'IT', 70000, 'Noida', 6),
(108, 'Rohit', 'Finance', 50000, 'Delhi', 5);

-----Level 1 (Basic)-----

-- 1. Sabhi employees ka data display karo.
SELECT * FROM EMPLOYEES;

-- 2. Sirf emp_name aur salary show karo.
SELECT EMP_NAME , SALARY FROM EMPLOYEES;

-- 3. Delhi ke employees dikhaye.
SELECT * FROM EMPLOYEES WHERE CITY = 'Delhi';

-- 4. Salary 50,000 se zyada wale employees.
SELECT * FROM EMPLOYEES WHERE SALARY > 50000;

-- 5. Experience 3 years ya usse zyada wale employees.
SELECT * FROM EMPLOYEES WHERE EXPERIENCE > 3 ;

-- 6. IT department ke employees.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT = 'IT';

-- 7. Salary descending order me display karo.
SELECT SALARY FROM EMPLOYEES ORDER BY SALARY DESC;

-- 8. Employee names alphabetical order me show karo.
SELECT EMP_NAME FROM EMPLOYEES ORDER BY EMP_NAME;

-- 9. Top 3 highest paid employees.
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 3;

-- 10. Noida ke employees ki details.
SELECT * FROM EMPLOYEES WHERE CITY = 'Noida';
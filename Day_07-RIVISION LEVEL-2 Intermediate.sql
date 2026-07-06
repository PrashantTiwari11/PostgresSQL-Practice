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

--Level 2 (Intermediate). ---

--1. IT department me kitne employees hain?
SELECT COUNT(EMP_NAME) FROM EMPLOYEES WHERE DEPARTMENT = 'IT';

--2. Maximum salary find karo.
SELECT MAX(SALARY) AS MAXIMUM_SAL FROM EMPLOYEES;

--3. Minimum salary find karo.
SELECT MIN(SALARY) AS MINIMUM_SALARY FROM EMPLOYEES;

--4. Average salary calculate karo.
SELECT AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES; 

--5. Total salary of all employees.
SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEES;

--6. Har department me kitne employees hain?
SELECT COUNT(EMP_NAME) FROM EMPLOYEES GROUP BY DEPARTMENT;

--7. Har department ki average salary.
SELECT AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT;

--8. Highest salary kis department me hai?
SELECT DEPARTMENT , MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES GROUP BY DEPARTMENT ORDER BY MAX_SALARY DESC LIMIT 1;

--9. Delhi me kitne employees hain?
SELECT COUNT(EMP_ID) FROM EMPLOYEES WHERE CITY = 'Delhi';

--10. Salary 40,000 aur 60,000 ke beech wale employees pta kro.
SELECT EMP_NAME FROM EMPLOYEES WHERE SALARY BETWEEN 40000 AND 60000;
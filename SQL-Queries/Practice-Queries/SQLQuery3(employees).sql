CREATE TABLE employees
(
emp_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
department VARCHAR(20) NOT NULL,
salary INT,
joining_date DATE,
)

INSERT INTO employees(emp_id,name,department,salary,joining_date)
VALUES
(1,'Rahul','IT',45000,'2020-05-10'),
(2,'David','AI',54000,'2021-05-01'),
(3,'Shreya','HR',205000,'2020-09-11'),
(4,'Raj','Finance',5000,'2024-05-10'),
(5,'Akshat','IT',89000,'2020-02-02')

--select all employees
SELECT *
FROM employees

--show IT employees where salary is >50000
SELECT 
*
FROM employees
WHERE department ='IT' and salary>50000

--show all employees highest salary 

SELECT *
FROM employees
ORDER BY salary DESC

--show top 3 highet paid employees
SELECT  TOP 3*
FROM employees
ORDER BY salary DESC

--no duplicate department
SELECT DISTINCT department
FROM employees

-- show name as employee_name and salary as monthly_salary
SELECT 
name AS employee_name,
salary AS monthly_salary
FROM employees

--name in uppercase
SELECT 
UPPER(name)
FROM employees

--department in lowercase
SELECT 
LOWER(department)
FROM employees

--name first 3 letter
SELECT 
SUBSTRING(name,0,3)
FROM employees

--show salary and round figure and abs absolute diff btw
SELECT
salary,
ROUND(salary/12,2) AS monthly_salary_rounded,
ABS(salary-50000) AS diff_from_50k
FROM employees

-- show total salary per dept and dept have total_salary>120k
SELECT 
department,
SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary)>120000

-- delete employee where salary <50000
DELETE FROM employees WHERE salary<50000

ALTER TABLE employees ADD Bonus INT
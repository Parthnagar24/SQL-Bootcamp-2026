--010.Find average salary per department in dbo.employees.

SELECT * FROM employees

SELECT
	department,
	AVG(salary) AS avg_salary_per_department
FROM employees
GROUP BY department


INSERT INTO employees 
VALUES
(4,'Shey','AI',40000,'2022-02-21',10000)
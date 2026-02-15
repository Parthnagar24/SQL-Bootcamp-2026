--012.List departments where average salary > 70,000.

SELECT
	department,
	AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000


SELECT * FROM employees
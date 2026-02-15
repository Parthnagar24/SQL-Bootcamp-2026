--032.List employees who joined BEFORE 2021 AND salary > 60,000

SELECT *
FROM employees
WHERE joining_date < '2021-01-01'
AND salary > 60000
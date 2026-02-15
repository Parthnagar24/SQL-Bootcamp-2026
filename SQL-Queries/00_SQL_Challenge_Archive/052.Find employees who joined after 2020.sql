--052.Find employees who joined after 2020.

SELECT 
*
FROM employees
WHERE YEAR(joining_date) > '2020'
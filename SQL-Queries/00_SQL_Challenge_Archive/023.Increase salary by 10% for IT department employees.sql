--023.Increase salary by 10% for IT department employees.

SELECT 
salary = salary + salary * 0.10
FROM employees
WHERE  department ='IT'

SELECT * FROM employees
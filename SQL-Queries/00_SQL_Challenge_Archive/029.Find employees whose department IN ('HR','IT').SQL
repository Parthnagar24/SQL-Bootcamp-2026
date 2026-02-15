--029.Find employees whose department IN ('HR','IT').

SELECT *
FROM employees
WHERE department IN ('HR','IT')

SELECT *
FROM employees
WHERE department NOT IN ('HR','IT')
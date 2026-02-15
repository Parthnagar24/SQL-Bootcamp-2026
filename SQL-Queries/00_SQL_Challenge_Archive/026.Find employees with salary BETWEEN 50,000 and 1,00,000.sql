--026.Find employees with salary BETWEEN 50,000 and 1,00,000.

SELECT * FROM Sales.Employees


SELECT 
	CONCAT(FirstName,' ',LastName) AS employee_name,
	salary
FROM Sales.Employees
WHERE salary BETWEEN 50000 AND 100000

--ALTERNATE AND BEST APPROACH

SELECT 
	CONCAT(FirstName,' ',LastName) AS employee_name,
	salary
FROM Sales.Employees
WHERE salary>=50000 AND salary<=100000

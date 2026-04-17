--Count employees per department (Sales.Employees)

SELECT
	Department,
	COUNT(EmployeeID) AS id_per_depart
FROM Sales.Employees
GROUP BY Department
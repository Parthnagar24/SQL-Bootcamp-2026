--043. Find employees who are NOT customers using EXCEPT 


SELECT 
	FirstName,
	LastName
FROM Sales.Employees

EXCEPT

SELECT 
	FirstName,
	LastName
FROM Sales.Customers
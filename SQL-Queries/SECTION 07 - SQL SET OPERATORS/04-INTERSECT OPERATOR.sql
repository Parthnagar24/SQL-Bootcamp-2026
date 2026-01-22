--INTERSECT : RETURNS ONLY ROWS THAT ARE COLUMN IN BOTH TABLES

SELECT 
	FirstName,
	LastName
FROM Sales.Employees

INTERSECT

SELECT
	FirstName,
	LastName
FROM Sales.Customers
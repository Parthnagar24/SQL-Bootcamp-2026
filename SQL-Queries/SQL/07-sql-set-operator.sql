--SET operator

SELECT 
	FirstName,
	LastName
FROM Sales.Customers

UNION 
--removes duplicate values and combines into 1 result
SELECT 
	FirstName,
	LastName
FROM Sales.Employees



SELECT 
	FirstName,
	LastName
FROM Sales.Customers

UNION ALL
--does not removes duplicate values and combines into 1 result
SELECT 
	FirstName,
	LastName
FROM Sales.Employees


SELECT 
	FirstName,
	LastName
FROM Sales.Customers

EXCEPT 
--returns unique values from 1st table 
SELECT 
	FirstName,
	LastName
FROM Sales.Employees



SELECT 
	FirstName,
	LastName
FROM Sales.Customers

INTERSECT
--returns common values among the tables
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
--UNION ALL : RETURNS ALL ROWS FROM BOTH QUERIES INLCUDING DUPLICATES

SELECT 
	FirstName,
	LastName
FROM Sales.Customers

UNION ALL

SELECT
	FirstName,
	LastName
FROM Sales.Employees
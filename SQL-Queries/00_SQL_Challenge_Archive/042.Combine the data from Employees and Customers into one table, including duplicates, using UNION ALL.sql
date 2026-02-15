--042.Combine the data from Employees and Customers into one table, including duplicates, using UNION ALL 

SELECT 
	FirstName,
	LastName
FROM Sales.Employees


UNION ALL

SELECT 
	FirstName,
	LastName
FROM sales.Customers
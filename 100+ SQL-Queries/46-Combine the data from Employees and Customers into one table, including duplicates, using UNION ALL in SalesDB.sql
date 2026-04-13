/* TASK 2: 
   Combine the data from Employees and Customers into one table, including duplicates, using UNION ALL 
*/
SELECT 
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees

UNION ALL

SELECT 
	CustomerID,
	FirstName,
	LastName
FROM Sales.Customers
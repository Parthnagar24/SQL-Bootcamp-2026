/* TASK 1: 
   Combine the data from Employees and Customers into one table using UNION 
*/

SELECT 
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees

UNION

SELECT 
	CustomerID,
	FirstName,
	LastName
FROM Sales.Customers
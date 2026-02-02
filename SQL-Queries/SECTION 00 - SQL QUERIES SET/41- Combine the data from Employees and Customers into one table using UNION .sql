/* TASK 1: 
   Combine the data from Employees and Customers into one table using UNION 
*/
SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION
SELECT
    FirstName,
    LastName
FROM Sales.Employees;
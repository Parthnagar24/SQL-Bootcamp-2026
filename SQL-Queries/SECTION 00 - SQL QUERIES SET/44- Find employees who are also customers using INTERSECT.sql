/* TASK 4: 
   Find employees who are also customers using INTERSECT 
*/
SELECT
    FirstName,
    LastName
FROM Sales.Employees
INTERSECT
SELECT
    FirstName,
    LastName
FROM Sales.Customers;

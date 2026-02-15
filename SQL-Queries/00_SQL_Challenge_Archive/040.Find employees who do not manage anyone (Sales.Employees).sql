--040.Find employees who do not manage anyone (Sales.Employees).

SELECT * FROM Sales.Employees

SELECT 
    e.FirstName
FROM Sales.Employees AS e
LEFT JOIN Sales.Employees AS e2
ON e.EmployeeID = e2.ManagerID
WHERE e2.ManagerID IS NULL;
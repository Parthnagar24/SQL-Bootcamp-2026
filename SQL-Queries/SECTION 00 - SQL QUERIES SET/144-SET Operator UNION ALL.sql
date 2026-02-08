--Display all cities from employees and departments including duplicates.

SELECT 
City
FROM employ

UNION ALL

SELECT 
Location
FROM Departments

--Display all department IDs from Employees and Projects without removing duplicates.

SELECT 
DepartmentID
FROM employ

UNION ALL

SELECT 
DepartmentID
FROM Projects
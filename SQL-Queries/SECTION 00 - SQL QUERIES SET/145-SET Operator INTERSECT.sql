--Display department IDs that exist in both Employees and Departments.

SELECT 
DepartmentID
FROM employ

INTERSECT

SELECT 
DepartmentID
FROM Departments

--Display cities that are present in both Employees and Departments.

SELECT 
City
FROM employ

INTERSECT

SELECT 
Location
FROM Departments

--Display department IDs that have both employees and project

SELECT 
DepartmentID
FROM employ

INTERSECT

SELECT 
DepartmentID
FROM Projects
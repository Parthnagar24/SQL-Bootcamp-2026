--Display department IDs that exist in Employees but not in Departments.

SELECT
DepartmentID
FROM employ

EXCEPT

SELECT 
DepartmentID
FROM Departments

--Display department IDs that exist in Departments but have no employees.

SELECT 
DepartmentID
FROM Departments

EXCEPT

SELECT
DepartmentID
FROM employ

--Display department IDs that have employees but no projects.

SELECT 
DepartmentID
FROM employ

EXCEPT

SELECT
DepartmentID
FROM Projects

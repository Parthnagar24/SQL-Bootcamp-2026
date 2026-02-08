--Display all unique cities where either employees work or departments are located.

SELECT 
	City
FROM employ

UNION

SELECT
	Location
FROM Departments



--Display unique department IDs that appear in Employees or Projects.

SELECT 
	DepartmentID
FROM employ 

UNION

SELECT 
	DepartmentID
FROM Projects

--Display unique names of employees and project names together in one list.

SELECT 
	Name
FROM employ 

UNION

SELECT 
	ProjectName
FROM Projects

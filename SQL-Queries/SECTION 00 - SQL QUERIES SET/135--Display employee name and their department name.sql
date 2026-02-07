--Display employee name and their department name.


SELECT 
	e.empID,
	e.Name,
	d.DepartmentName
FROM employ AS e
INNER JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID
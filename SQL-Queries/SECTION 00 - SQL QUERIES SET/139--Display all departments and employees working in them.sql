--Display all departments and employees working in them.

SELECT 
	e.empID,
	e.Name,
	d.DepartmentName
FROM employ AS e
RIGHT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID






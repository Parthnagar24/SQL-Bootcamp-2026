--Display all employees and their department names (even if department is missing).

SELECT
	e.Name,
	d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID


--LEFT JOIN USED TO GET ALL EMPLOYEES 
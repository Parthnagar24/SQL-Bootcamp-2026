--Display employees along with department location.

SELECT 
	e.Name,
	e.empID,
	d.Location
FROM employ AS e
INNER JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID

--used inner join to display only the matching data from both tables using ON condition
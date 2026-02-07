--Display employee name, salary, and department name.

SELECT 
e.Name,
e.Salary,
d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID

--Display employee name, department name, and project name.


SELECT
e.Name,
d.DepartmentName,
p.ProjectName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
LEFT JOIN Projects AS p
ON  d.DepartmentID = P.DepartmentID

--Display projects along with department names.
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects AS p
LEFT JOIN Departments AS d
ON p.DepartmentID = d.DepartmentID;

--Display departments that have no employees.

SELECT
    d.DepartmentName
FROM Departments AS d
LEFT JOIN employ AS e
ON d.DepartmentID = e.DepartmentID
WHERE e.DepartmentID IS NULL;


--Display employees who are not assigned to any department.

SELECT
    e.Name
FROM employ AS e
LEFT JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;


--Display departments that have no projects.

SELECT
    d.DepartmentName
FROM Departments AS d
LEFT JOIN Projects AS p
ON d.DepartmentID = p.DepartmentID
WHERE p.DepartmentID IS NULL;
--Display employees working in IT department.

SELECT 
e.DepartmentID,
d.DepartmentID,
e.empID,
e.Name,
d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
WHERE DepartmentName = 'IT'

--Display employees from Mumbai along with their department names.

SELECT 
e.DepartmentID,
d.DepartmentID,
e.empID,
e.Name,
d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
WHERE City = 'Mumbai'

--Display employees earning more than 60,000 and their department names.

SELECT 
e.DepartmentID,
d.DepartmentID,
e.empID,
e.Name,
e.Salary,
d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
WHERE Salary >60000

--Display employees who work in departments located in Delhi.

SELECT 
e.DepartmentID,
d.DepartmentID,
e.empID,
e.Name,
d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
WHERE Location = 'Delhi'

--Display employees whose department is HR or Sales.

SELECT 
e.DepartmentID,
d.DepartmentID,
e.empID,
e.Name,
d.DepartmentName
FROM employ AS e
LEFT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
WHERE DepartmentName = 'HR' OR DepartmentName ='Sales'
--Find total number of employees in each department.

SELECT
d.DepartmentName,
COUNT(empID)
FROM employ AS e
RIGHT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName

--Find average salary of employees in each department.

SELECT
d.DepartmentName,
AVG(Salary)
FROM employ AS e
RIGHT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName

--Find departments having more than 2 employees.


SELECT
d.DepartmentName,
COUNT(empID)
FROM employ AS e
RIGHT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName
HAVING COUNT(empID)>2

--Find department-wise maximum salary.

SELECT
d.DepartmentName,
MAX(Salary)
FROM employ AS e
RIGHT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName

--Find departments where average salary is greater than 60,000.

SELECT
d.DepartmentName,
AVG(Salary)
FROM employ AS e
RIGHT JOIN Departments AS d
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName
HAVING AVG(Salary) > 60000
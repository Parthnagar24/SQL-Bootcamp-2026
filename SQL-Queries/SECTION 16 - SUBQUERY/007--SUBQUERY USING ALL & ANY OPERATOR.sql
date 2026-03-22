--SUBQUERY USING ALL & ANY OPERATOR


--ANY : checks if a value matches any value within a list 

/*
SELECT col1,col2...
FROM table1
WHERE col < ALL (SELECT col FROM table WHERE condtion)
*/

--find female employees whose salaries are greater than the salaries of male employes

--mainquery
SELECT
	EmployeeID,
	FirstName,
	Salary
FROM Sales.Employees
WHERE Gender ='F'
AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender ='M')


--find female employees whose salaries are greater than the salaries OF ALL male employes


SELECT
	EmployeeID,
	FirstName,
	Salary
FROM Sales.Employees
WHERE Gender ='F'
AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender ='M')
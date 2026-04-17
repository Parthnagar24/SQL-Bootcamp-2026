--Departments with avg salary > 60000 (Sales.Employees)

SELECT
Department,
AVG(Salary) AS avg_Salary
FROM Sales.Employees
GROUP BY Department
HAVING AVG(Salary) > 60000
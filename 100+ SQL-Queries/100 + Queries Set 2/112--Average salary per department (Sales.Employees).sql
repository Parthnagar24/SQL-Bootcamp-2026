--Average salary per department (Sales.Employees)

SELECT
Department,
AVG(Salary) AS avg_Salary
FROM Sales.EMployees
GROUP BY Department
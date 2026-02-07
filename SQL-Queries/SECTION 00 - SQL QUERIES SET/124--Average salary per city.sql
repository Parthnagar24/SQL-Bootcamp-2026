--Average salary per city.

SELECT 
	City,
	AVG(Salary)
FROM Employeees
GROUP BY City
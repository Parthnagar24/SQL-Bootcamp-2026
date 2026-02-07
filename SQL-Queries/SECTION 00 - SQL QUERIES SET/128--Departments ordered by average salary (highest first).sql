--Departments ordered by average salary (highest first).

SELECT 
	Department,
	AVG(Salary)
FROM Employeees
GROUP BY Department
ORDER BY AVG(Salary) DESC
--Number of employees who joined each year

SELECT 
	JoinYear,
	COUNT(EmpId)
FROM Employeees
GROUP BY JoinYear
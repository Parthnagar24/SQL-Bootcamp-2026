--Count total employees in each department.

SELECT 
	Department,
	COUNT(EmpID)
FROM Employeees
GROUP BY Department
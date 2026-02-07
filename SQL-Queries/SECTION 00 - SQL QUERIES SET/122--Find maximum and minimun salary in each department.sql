--Find maximum and minimun salary in each department.


SELECT 
	Department,
	MAX(Salary),
	MIN(Salary)
FROM Employeees
GROUP BY Department
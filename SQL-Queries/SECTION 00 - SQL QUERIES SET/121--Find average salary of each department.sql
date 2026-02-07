--Find average salary of each department.


SELECT 
	Department,
	AVG(Salary)
FROM Employeees
GROUP BY Department

SELECT * FROM Employeees
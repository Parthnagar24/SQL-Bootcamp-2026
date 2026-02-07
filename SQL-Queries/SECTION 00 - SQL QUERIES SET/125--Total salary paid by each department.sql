--Total salary paid by each department.

SELECT
	Department,
	SUM(Salary)
FROM Employeees
GROUP BY Department
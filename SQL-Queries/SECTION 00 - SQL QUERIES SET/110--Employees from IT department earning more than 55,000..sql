--Employees from IT department earning more than 55,000.

SELECT
	Name,
	Department,
	Salary
FROM Employeees
WHERE Department = 'IT' AND Salary >55000
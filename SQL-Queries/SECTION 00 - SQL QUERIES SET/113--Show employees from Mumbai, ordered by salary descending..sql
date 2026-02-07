--Show employees from Mumbai, ordered by salary descending.

SELECT 
	Name,
	City,
	Salary
FROM Employeees
WHERE City ='Mumbai'
ORDER BY Salary DESC
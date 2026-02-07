--Count employees in each city.


SELECT 
	City,
	COUNT(EmpID)
FROM Employeees
GROUP BY City
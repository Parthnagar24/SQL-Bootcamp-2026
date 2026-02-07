--Departments having more than 2 employees.

SELECT 
Department,
COUNT(EmpID)
FROM Employeees
GROUP BY Department
HAVING COUNT(EmpID) >2
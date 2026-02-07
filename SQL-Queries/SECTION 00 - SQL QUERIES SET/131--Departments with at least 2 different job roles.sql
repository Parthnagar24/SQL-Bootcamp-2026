--Departments with at least 2 different job roles.


SELECT
    Department,
    COUNT(DISTINCT JobRole) AS role_count
FROM Employeees
GROUP BY Department
HAVING COUNT(DISTINCT JobRole) >= 2;
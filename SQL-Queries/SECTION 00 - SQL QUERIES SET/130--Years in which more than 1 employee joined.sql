--Years in which more than 1 employee joined.

SELECT
JoinYear,
COUNT(EmpID)
FROM Employeees
GROUP BY JoinYear
HAVING COUNT(EmpID) >1
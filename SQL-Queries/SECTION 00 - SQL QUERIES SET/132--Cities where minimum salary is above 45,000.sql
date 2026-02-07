--Cities where minimum salary is above 45,000.

SELECT
City,
MIN(Salary)
FROM Employeees
GROUP BY City
HAVING MIN(Salary) >45000
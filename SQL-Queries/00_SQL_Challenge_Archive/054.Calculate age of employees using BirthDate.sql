--054.Calculate age of employees using BirthDate.

SELECT 
    BirthDate,
    DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM Sales.Employees;
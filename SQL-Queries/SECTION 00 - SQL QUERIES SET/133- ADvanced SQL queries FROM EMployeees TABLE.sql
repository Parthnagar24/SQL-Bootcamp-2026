--Top 3 highest paid employees in IT department.
SELECT TOP 3
    Name,
    Department,
    Salary
FROM Employeees
WHERE Department = 'IT'
ORDER BY Salary DESC;


--Department-wise employee count, ordered by count descending.

SELECT
    Department,
    COUNT(EmpID)
FROM Employeees
GROUP BY Department
ORDER BY COUNT(EmpID) DESC

--City-wise average salary, show only cities with avg salary > 50k.

SELECT 
City,
AVG(Salary)
FROM Employeees
GROUP BY City
HAVING AVG(Salary)>50000

--Job roles having more than one employee, sorted by avg salary.

SELECT
    JobRole,
    COUNT(EmpID),
    AVG(SALARY)
FROM Employeees
GROUP BY JobRole
ORDER BY AVG(Salary)

--Find departments where average salary is higher than overall average salary.

SELECT
    Department,
    AVG(Salary) AS dept_avg_salary
FROM Employeees
GROUP BY Department
HAVING AVG(Salary) >
       (SELECT AVG(Salary) FROM Employeees);

   
--Show oldest employee in each department.

SELECT 
Department,
MAX(Age)
FROM Employeees
GROUP BY Department

--Find the second highest salary

SELECT TOP 2 *
FROM Employeees
ORDER BY Salary DESC
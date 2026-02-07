--Display employees from IT department whose salary is greater than 55,000.

SELECT *
FROM Employeees
WHERE Department = 'IT' AND Salary >55000

--Display employees who work in HR OR Sales department.

SELECT *
FROM Employeees
WHERE Department ='HR' OR Department ='Sales'

--Display employees who are NOT from Delhi.

SELECT *
FROM Employeees
WHERE NOT City='Delhi'

--Display employees whose salary is BETWEEN 45,000 AND 70,000.

SELECT *
FROM Employeees
WHERE Salary BETWEEN 45000 AND 70000

--Display employees whose age is greater than or equal to 30.

SELECT *
FROM Employeees
WHERE Age>=30

--Display employees who work in Delhi, Mumbai, or Pune.

SELECT *
FROM Employeees
WHERE City = 'Mumbai' OR City = 'Delhi' OR City = 'Pune'

--Display employees who do NOT work in HR or Sales.

SELECT *
FROM Employeees
WHERE Department !='HR' AND Department !='Sales'

--Display employees whose name starts with ‘A’.

SELECT name 
FROM Employeees
WHERE name LIKE 'A%'

--Display employees whose name contains ‘ya’.

SELECT name 
FROM Employeees
WHERE name LIKE '%ya%'

--Display employees who joined before 2020.

SELECT *
FROM Employeees
WHERE JoinYear < '2020'

--Display employees from IT department whose salary is greater than 50,000 AND age is less than 30.

SELECT *
FROM Employeees
WHERE Department = 'IT' AND Salary >50000 AND Age<30

--Display employees from IT OR HR department who earn more than 60,000.

SELECT *
FROM Employeees
WHERE Department = 'IT' OR  Department = 'HR' AND Salary>60000

--Display employees whose salary is NOT BETWEEN 40,000 AND 60,000.

SELECT *
FROM Employeees
WHERE NOT Salary BETWEEN 40000 AND 60000


--Display employees who are Managers OR Analysts.

SELECT *
FROM Employeees
WHERE JobRole = 'Manager' OR JobRole = 'Analyst'

--Display employees who are NOT Managers.

SELECT *
FROM Employeees
WHERE JobRole != 'Manager'


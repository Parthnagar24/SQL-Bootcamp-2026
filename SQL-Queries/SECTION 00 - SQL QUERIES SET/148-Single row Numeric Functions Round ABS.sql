--Display absolute salary difference from 50,000

SELECT
Salary,
ABS(Salary - 50000)
FROM employ

--Round salary to nearest 1000

SELECT 
Salary,
ROUND(Salary, -3)
FROM employ;

--Display salary rounded to 2 decimal places

SELECT 
Salary,
ROUND(Salary,2)
FROM employ
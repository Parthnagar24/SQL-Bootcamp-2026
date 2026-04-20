/* TASK 9:
   Find female employees whose salaries are greater than the salaries of any male employees.
*/

SELECT 
EmployeeID,
Salary,
CONCAT(FirstName,' ',LastName) AS Full_Name
FROM Sales.Employees
WHERE Gender ='F'
AND Salary >ANY

(SELECT 
Salary
FROM Sales.Employees
WHERE Gender ='M')
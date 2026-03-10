SELECT 
CASE
WHEN 70 > 50 THEN 'Yes'
ELSE 'No'
END AS result;

SELECT 
CASE
WHEN 90 >= 80 THEN 'A'
WHEN 90 >= 60 THEN 'B'
WHEN 90 >= 40 THEN 'C'
ELSE 'Fail'
END AS grade;

SELECT 
CASE
WHEN 75000 > 70000 THEN 'High Salary'
WHEN 75000 BETWEEN 40000 AND 70000 THEN 'Medium Salary'
ELSE 'Low Salary'
END AS salary_category;
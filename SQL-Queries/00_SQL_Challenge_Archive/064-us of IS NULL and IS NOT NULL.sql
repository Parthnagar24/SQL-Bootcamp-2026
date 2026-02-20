/* TASK 5: 
   Identify the customers who have no scores 
*/
SELECT *
FROM Sales.Customers
WHERE Score IS NULL;

/* TASK 6: 
   Identify the customers who have scores 
*/
SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL;
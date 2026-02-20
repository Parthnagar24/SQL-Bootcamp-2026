/*TASK 1: 
   Find the average scores of the customers.
   Uses COALESCE to replace NULL Score with 0.*/

   SELECT
		AVG(COALESCE(Score,0)) As avg_score_for_customers
   FROM Sales.Customers

   /* TASK 2: 
   Display the full name of customers in a single field by merging their
   first and last names, and add 10 bonus points to each customer's score.
*/

SELECT
CONCAT(FirstName,' ',LastName) AS fullname,
COALESCE(Score,0) + 10 AS bonus_addition
FROM Sales.Customers


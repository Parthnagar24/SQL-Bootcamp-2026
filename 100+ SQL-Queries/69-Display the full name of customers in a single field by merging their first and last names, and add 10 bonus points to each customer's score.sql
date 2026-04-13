/* TASK 2: 
   Display the full name of customers in a single field by merging their first and last names,
   and add 10 bonus points to each customer's score.
*/

SELECT
CONCAT(FirstName,' ',LastName) AS Full_name,
Score,
COALESCE(Score,0),
COALESCE(Score,0)+10 AS bonus_Score
FROM Sales.Customers
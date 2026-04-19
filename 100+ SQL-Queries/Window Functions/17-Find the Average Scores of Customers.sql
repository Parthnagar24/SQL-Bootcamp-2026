/* TASK 7:
   Find the Average Scores of Customers
*/

SELECT 
AVG(COALESCE(Score,0)) OVER()   --replace null with 0 
FROM Sales.Customers
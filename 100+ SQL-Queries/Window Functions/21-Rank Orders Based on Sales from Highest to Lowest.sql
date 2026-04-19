/* TASK 1:
   Rank Orders Based on Sales from Highest to Lowest
*/

SELECT
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) ,
RANK() OVER(ORDER BY Sales DESC),
DENSE_RANK() OVER(ORDER BY Sales DESC)
FROM Sales.Orders
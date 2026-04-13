/* TASK 6:
   How many orders were placed each month?
*/

SELECT
MONTH(CreationTime),
COUNT(OrderID)
FROM Sales.Orders
GROUP BY MONTH(CreationTime)
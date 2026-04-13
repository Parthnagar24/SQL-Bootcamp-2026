/* TASK 5:
   How many orders were placed each year?
*/

SELECT
YEAR(CreationTime),
COUNT(OrderID)
FROM Sales.Orders
GROUP BY YEAR(CreationTime)
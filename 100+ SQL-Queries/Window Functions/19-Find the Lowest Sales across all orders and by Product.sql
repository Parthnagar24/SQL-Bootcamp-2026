/* TASK 10:
   Find the Lowest Sales across all orders and by Product
*/

SELECT
ProductID,
MIN(Sales) OVER(),
MIN(Sales) OVER(PARTITION BY ProductID)
FROM Sales.Orders
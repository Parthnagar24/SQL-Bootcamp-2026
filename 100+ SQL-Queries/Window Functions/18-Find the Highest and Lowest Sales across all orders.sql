/* TASK 9:
   Find the Highest and Lowest Sales across all orders
*/

SELECT
MAX(Sales) OVER(),
MIN(Sales) OVER()
FROM Sales.Orders
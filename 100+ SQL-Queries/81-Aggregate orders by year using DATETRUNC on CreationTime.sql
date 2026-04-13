/* TASK 3:
   Aggregate orders by year using DATETRUNC on CreationTime.
*/

SELECT
DATETRUNC(year,CreationTime),
COUNT(*)
FROM Sales.orders
GROUP BY DATETRUNC(year,CreationTime)
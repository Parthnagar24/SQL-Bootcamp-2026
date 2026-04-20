/* TASK 4:
   Show customer details along with their total sales.
*/


SELECT
*
FROM Sales.Customers AS c

LEFT JOIN 
	(SELECT
		CustomerID,
		SUM(Sales) AS totalSales
	FROM Sales.Orders
	GROUP BY CustomerID) o
ON	c.CustomerID = o.CustomerID
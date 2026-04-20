/* TASK 5:
   Show all customer details and the total orders of each customer.
*/


SELECT * FROM Sales.Customers AS c

LEFT JOIN
	--subquery
	(SELECT
		CustomerID,
		COUNT(*) AS totalOrders
	FROM Sales.Orders
	GROUP BY CustomerID) o
ON c.CustomerID =o.CustomerID
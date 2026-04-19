--show all customers details and find total orders of each customers

--mainquery
SELECT
*
FROM Sales.Customers AS c

LEFT JOIN (
	SELECT
	CustomerID,
	COUNT(*)  AS total_orders
	FROM Sales.Orders 
	GROUP BY CustomerID ) o
ON c.CustomerID = o.CustomerID
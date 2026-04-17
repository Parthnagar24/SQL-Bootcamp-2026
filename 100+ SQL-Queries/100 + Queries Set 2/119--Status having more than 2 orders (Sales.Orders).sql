--Status having more than 2 orders (Sales.Orders)

SELECT 
	OrderStatus,
	COUNT(OrderId) AS total_orders_per_Status
FROM Sales.Orders
GROUP BY OrderStatus
HAVING COUNT(OrderId) >2
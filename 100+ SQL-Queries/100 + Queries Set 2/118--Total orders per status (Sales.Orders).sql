--Total orders per status (Sales.Orders)

SELECT 
	OrderStatus,
	COUNT(OrderId) AS total_orders_per_Status
FROM Sales.Orders
GROUP BY OrderStatus
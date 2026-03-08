--Count orders by date.

SELECT 
	order_date,
	COUNT(order_id) AS date_per_customer
FROM orders
GROUP BY order_date
--Select unique customer IDs from orders.

SELECT DISTINCT
	order_id,
	customer_id
FROM orders
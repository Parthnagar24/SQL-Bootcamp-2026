--Count orders per customer.

SELECT 
	customer_id,
	COUNT(order_id) AS orders_per_customer
FROM orders
GROUP BY customer_id
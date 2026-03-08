--Show customers who placed orders.

SELECT 
	c.first_name,
	o.order_id
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.order_id IS NOT NULL
--Show orders with customer country.

SELECT 
	c.country,
	o.order_id
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
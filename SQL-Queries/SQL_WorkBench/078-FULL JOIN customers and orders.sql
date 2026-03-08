--FULL JOIN customers and orders.

SELECT 
	*
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
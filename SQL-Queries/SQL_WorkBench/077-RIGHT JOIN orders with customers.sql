--RIGHT JOIN orders with customers.

SELECT 
	*
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
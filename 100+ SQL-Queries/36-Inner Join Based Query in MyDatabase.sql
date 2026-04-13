-- INNER JOIN
/* Get all customers along with their orders, 
   but only for customers who have placed an order */


SELECT
	c.id,
	c.first_name,
	o.order_id
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

s
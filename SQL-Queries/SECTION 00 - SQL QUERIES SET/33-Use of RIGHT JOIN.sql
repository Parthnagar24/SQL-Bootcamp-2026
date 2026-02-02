-- RIGHT JOIN
/* Get all customers along with their orders, 
   including orders without matching customers */

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.customer_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id

-- BEST APPROACH

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.customer_id,
	o.sales
FROM orders AS o
LEFT JOIN  customers AS c
ON c.id = o.customer_id
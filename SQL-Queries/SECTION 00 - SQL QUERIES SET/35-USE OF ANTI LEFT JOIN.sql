-- LEFT ANTI JOIN
/* Get all customers who haven't placed any order */

SELECT
	c.id,
	c.first_name,
	o.customer_id,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL
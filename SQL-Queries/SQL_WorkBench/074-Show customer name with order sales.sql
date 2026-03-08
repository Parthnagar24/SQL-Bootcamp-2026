--Show customer name with order sales

SELECT 
	c.first_name,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
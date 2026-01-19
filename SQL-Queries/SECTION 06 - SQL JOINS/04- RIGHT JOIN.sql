-- RIGHT JOIN : returns all rows from right table and only matching rows from left table

SELECT * FROM customers
SELECT * FROM orders

/*
get all customers along with their orders, 
including ORDERS without matching customers
*/

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id


-- BEST WAY

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o
LEFT JOIN  customers AS c
ON c.id = o.customer_id
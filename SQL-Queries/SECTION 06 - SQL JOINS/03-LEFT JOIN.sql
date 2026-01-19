-- LEFT JOIN : returns all rows from left table and matching rows from right table

SELECT * FROM customers
SELECT * FROM orders

/*
get all customers along with their orders, 
including those without orders
*/

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
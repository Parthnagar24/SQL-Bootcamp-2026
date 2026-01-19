-- FULL JOIN : RETURNS ALL ROWS FROM BOTH TABLE

SELECT * FROM customers
SELECT * FROM orders

-- get all customers and all orders, even if there's no match
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
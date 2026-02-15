--035.Join dbo.orders with dbo.customers to show customer names and order sales.

SELECT * FROM orders
SELECT * FROM customers


SELECT 
	c.first_name,
	o.sales
FROM orders AS o
INNER JOIN customers AS c
ON o.customer_id = c.id
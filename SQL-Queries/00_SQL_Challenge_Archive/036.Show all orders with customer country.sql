--036.Show all orders with customer country.

SELECT 
	o.order_id,
	o.customer_id,
	o.order_date,
	o.sales,
	c.country
FROM orders AS o
LEFT  JOIN customers AS c
ON o.customer_id = c.id
--Show all orders placed in 2021.

SELECT 
	order_id,
	order_date
FROM orders
WHERE YEAR(order_date) = '2021'
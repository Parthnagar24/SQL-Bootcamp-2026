--retrieve orderid and sales whose order date is less than '01-03'2022'

SELECT
	order_id,
	sales,
	order_date
FROM orders
WHERE order_date < '2021-03-01'
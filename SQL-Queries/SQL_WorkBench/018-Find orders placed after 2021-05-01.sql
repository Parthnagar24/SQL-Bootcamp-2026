--Find orders placed after 2021-05-01

SELECT
	order_id,
	customer_id,
	order_date
FROM orders
WHERE order_date = '2021-05-01'


--
SELECT * FROM orders
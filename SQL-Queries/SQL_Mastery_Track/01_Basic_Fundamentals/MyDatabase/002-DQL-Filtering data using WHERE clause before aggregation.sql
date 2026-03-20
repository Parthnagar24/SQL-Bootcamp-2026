--retrieve customer's name where country ='USA'

SELECT
	first_name,
	country
FROM customers
WHERE country ='USA'

--retrieve countries whose score is more than 390

SELECT
	country
FROM customers
WHERE score > 390

--retrive order details where order is placed after '2021-03-01'

SELECT *
FROM orders
WHERE order_date > '2021-03-01'
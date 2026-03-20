--retrieve all customer data

SELECT *
FROM customers

--retrieve all customer's orders

SELECT *
FROM orders

--retrive customer's country and score

SELECT
	country,
	score
FROM customers

--retrieve order date and sales

SELECT
	order_date,
	sales
FROM orders
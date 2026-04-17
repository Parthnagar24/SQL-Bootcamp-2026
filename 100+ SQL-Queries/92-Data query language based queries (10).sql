--retrieve all data from customers table
SELECT * FROM customers 

--retrieve all data from orders table
SELECT * FROM orders

--retrieve country and score from customers table
SELECT
	country,
	score
FROM customers

--retrieve customers with score 0
SELECT
	first_name,
	score
FROM customers
WHERE score = 0

--retrieve customer's score in lowest to highest value

SELECT *
FROM customers
ORDER BY score ASC


--retrieve top 2 customers

SELECT TOP 2*
FROM customers

--retrieve top 2 customers with lowest score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

--retrieve unique list of country

SELECT DISTINCT
country
FROM customers


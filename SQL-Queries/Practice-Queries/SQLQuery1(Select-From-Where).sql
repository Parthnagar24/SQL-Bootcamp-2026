
-- Retrieve All Customer Data

SELECT *
FROM customers

-- Retrieve All Order Data

SELECT *
FROM orders

-- Retrieving each customers name,country and score

SELECT
	first_name,
	country,
	score
FROM customers

-- Retrieve customers with a score not equal to 0

SELECT *
FROM customers
WHERE score != 0


-- Retrieve customers from Germany

SELECT 
first_name ,
country
FROM customers
WHERE country = 'Germany'

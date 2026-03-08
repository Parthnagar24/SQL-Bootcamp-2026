--Customers with score > 500 OR country = UK.

SELECT 
	first_name,
	country,
	score
FROM customers
WHERE score > 500 OR country = 'UK' 
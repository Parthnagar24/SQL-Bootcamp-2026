--Customers NOT from USA.

SELECT 
	first_name,
	country,
	score
FROM customers
WHERE NOT country = 'USA' 
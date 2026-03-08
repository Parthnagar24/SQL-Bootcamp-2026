--Customers from USA AND score > 500.

SELECT 
	first_name,
	country,
	score
FROM customers
WHERE country = 'USA' AND score > 500
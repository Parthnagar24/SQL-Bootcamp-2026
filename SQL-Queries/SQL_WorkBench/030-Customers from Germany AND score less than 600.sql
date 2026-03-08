--Customers from Germany AND score < 600.

SELECT 
	first_name,
	country,
	score
FROM customers
WHERE country = 'Germany' AND score < 600
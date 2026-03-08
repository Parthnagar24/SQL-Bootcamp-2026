--Show highest scoring customer.

SELECT TOP 3 
	first_name,
	score
FROM customers
ORDER BY score DESC
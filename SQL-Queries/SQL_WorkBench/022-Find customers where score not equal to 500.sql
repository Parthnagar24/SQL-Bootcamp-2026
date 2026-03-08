--Find customers where score <> 500.

SELECT 
	first_name,
	score
FROM customers
WHERE score <> 500
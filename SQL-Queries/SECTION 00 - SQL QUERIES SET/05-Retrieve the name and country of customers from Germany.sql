-- Retrieve the name and country of customers from Germany

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany'
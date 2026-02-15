--027.List customers from USA OR Germany.

SELECT
	first_name
FROM customers
WHERE country ='USA' OR country ='Germany'
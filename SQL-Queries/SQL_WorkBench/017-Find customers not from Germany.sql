--Find customers not from Germany.

SELECT
	id,
	country
FROM customers
WHERE country <> 'Germany'
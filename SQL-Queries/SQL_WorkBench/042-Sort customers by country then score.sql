--Sort customers by country then score.

SELECT *
FROM customers
ORDER BY
	country ASC,
	score DESC
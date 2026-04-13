--retieve those customers whose score is greater than 400

SELECT
	first_name,
	country,
	score
FROM customers
WHERE score > 400    --USING WHERE CLAUSE TO FILTER DATA BEFORE AGGREGATION
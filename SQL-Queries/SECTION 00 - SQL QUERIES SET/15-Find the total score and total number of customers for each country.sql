-- Find the total score and total number of customers for each country

SELECT
	country,
	COUNT(id) AS total_customer,
	SUM(score) AS total_score
FROM customers
GROUP BY country

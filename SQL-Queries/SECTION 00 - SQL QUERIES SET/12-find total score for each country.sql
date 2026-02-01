-- Find the total score for each country

	SELECT 
	country,
	SUM(score) AS total_score_for_each_country
FROM customers
GROUP BY country
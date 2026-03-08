--Average score per country.

SELECT 
	country,
	AVG(score)  AS average_Score_per_country
FROM customers
GROUP BY country
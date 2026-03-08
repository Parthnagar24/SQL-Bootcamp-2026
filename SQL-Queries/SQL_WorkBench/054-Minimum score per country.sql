--Minimum score per country.

SELECT 
	country,
	MIN(score)  AS minimum_Score_per_country
FROM customers
GROUP BY country
--Maximum score per country.

SELECT 
	country,
	MAX(score)  AS maximum_Score_per_country
FROM customers
GROUP BY country
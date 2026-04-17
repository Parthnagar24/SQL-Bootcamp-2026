--retrieve average score per country

SELECT 
	country,	
	AVG(score) AS avg_score_percountry
FROM customers
GROUP BY country


--retrieve total count of customers per country

SELECT
	country,
	COUNT(id) AS customers_per_country
FROM customers
GROUP BY country


--retrieve the highest and lowest score per country 

SELECT
	country,
	MAX(score) AS highest_value_per_country,
	MIN(score) AS lowest_value_per_country
FROM customers
GROUP BY country


--retrieve total sum of score  per country

SELECT
	country,
	SUM(score) AS total_Sum_percountry
FROM customers
GROUP BY country

--retrieve average score per country, having score > 500


SELECT
	country,
	AVG(score) AS avg_customers_per_country
FROM customers
GROUP BY country
HAVING AVG(score) >430
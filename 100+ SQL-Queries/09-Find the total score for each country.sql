--Find the total score for each country

SELECT 
	country,
	SUM(score) AS total_score_of_each_country
FROM customers
GROUP BY country     --used to group rows that have the same values into summary rows
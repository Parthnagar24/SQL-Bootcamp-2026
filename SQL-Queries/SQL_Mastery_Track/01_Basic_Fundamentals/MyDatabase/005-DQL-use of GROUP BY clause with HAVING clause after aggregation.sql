
SELECT * FROM customers

--Use of group by clause 
SELECT 
	country,
	COUNT(*) AS number_of_customers_per_country,
	SUM(score) AS total_sum_of_score_of_each_country,
	AVG(score) AS average_of_score_of_each_country,
	MAX(score)AS maximum_Score_of_each_country,
	MIN(score) AS minimum_score_of_Each_country
FROM customers
GROUP BY country

--retrieve countries with number of customers more than 1


SELECT 
	country,
	COUNT(*) AS number_of_customers_per_country
FROM customers
GROUP BY country
HAVING COUNT(*) >1

--retrieve countries whose total score is more than 800

SELECT 
	country,
	SUM(score) AS total_sale
FROM customers
GROUP BY country
HAVING 	SUM(score) > 800
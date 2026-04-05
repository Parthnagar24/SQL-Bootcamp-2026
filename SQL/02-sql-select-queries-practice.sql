--Find top 2 countries with highest total score

SELECT TOP 2
country,
SUM(score) AS Highest_score_per_country
FROM customers
GROUP BY country
ORDER BY SUM(score) DESC


--Count customers per country where avg score > 400

SELECT 
country,
COUNT(*) AS total_customer_per_country,
AVG(score) AS AVERAGE_score_per_country
FROM customers
GROUP BY country
HAVING AVG(score) > 400

--Get distinct countries sorted by name

SELECT DISTINCT
	country
FROM customers
ORDER BY country ASC

SELECT DISTINCT
	country
FROM customers
ORDER BY country DESC

--Find lowest 3 scoring customers

SELECT TOP 3 *
FROM customers
ORDER BY score ASC
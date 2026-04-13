-- DATA QUERY LANGUAGE DQL:

--to retrieve all data from the tables
SELECT * FROM customers
SELECT * FROM orders

--to retrieve specific columns from the table
SELECT
	country,
	score
FROM customers

SELECT
	customer_id,
	order_date,
	sales
FROM orders

--filtering data before aggregation using the where clause

SELECT *
FROM customers
WHERE score <> 0

SELECT *
FROM orders
WHERE MONTH(order_date) = '4'

--performing aggregation by combine rows with similar value using group by clause

SELECT 
	country,
	COUNT(*) AS number_of_customers_per_country,
	SUM(score) AS total_score_per_country,
	AVG(score) AS average_score_per_country
FROM customers
GROUP BY country

--filtering data after aggregation using having clause

SELECT 
	country,
	COUNT(*) AS number_of_customers_per_country,
	SUM(score) AS total_score_per_country,
	AVG(score) AS average_score_per_country
FROM customers
GROUP BY country
HAVING COUNT(*) >1

--sorting data both L_H and H_L

SELECT *
FROM customers
ORDER BY score ASC

SELECT *
FROM customers
ORDER BY score DESC

--elimination of duplicate data from the table AND making it unique

SELECT DISTINCT 
	country	
FROM customers                   --'1 uk, 2 germany, 2 usa  --> 1 uk 1 germany 1 usa'

--using top clause to get first 3 customers

SELECT TOP 3 *
FROM customers

--using top clause to get first 3 customers with highest score value

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

--using top clause to get first 3 customers with lowest score value

SELECT TOP 3 *
FROM customers
ORDER BY score    -- by default it is ascending

--combine use of where clause, top clause, and order by 
SELECT TOP 3 *
FROM customers
WHERE score <> 0
ORDER BY score              --we had 1 usa customer with score = 0


-- Find the top 2 country with (highest score) 
-- Ignore customers with score = 0

SELECT TOP 2 
	country,
	MAX(score) AS highest_Score_for_Each_country
FROM customers
WHERE score <>0
GROUP BY country
ORDER BY MAX(score) DESC

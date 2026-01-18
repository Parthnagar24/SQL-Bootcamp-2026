--07.Find total score and total customers for each country

SELECT *
FROM customers

SELECT
country,
COUNT(id) AS total_customer,
SUM(score) AS total_score
FROM customers
GROUP BY country
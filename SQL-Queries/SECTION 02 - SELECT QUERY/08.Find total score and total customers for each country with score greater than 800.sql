--08.Find total score and total customers for each country with score>500

SELECT *
FROM customers

SELECT
country,
COUNT(id) AS total_customer,
SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 800
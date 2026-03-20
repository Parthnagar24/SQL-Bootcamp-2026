-- Find the total score for each country

SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country


-- Find the total score and total number of customers for each country

SELECT 
	country,
	COUNT(id) AS total_customer,
	SUM(score) AS total_score
FROM customers
GROUP BY country


/* find the average score for each country
considering only customers with the score not equal to 0
and return only those countries with
an average score greater than 430 */

SELECT 
country ,
AVG(score) AS Average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430


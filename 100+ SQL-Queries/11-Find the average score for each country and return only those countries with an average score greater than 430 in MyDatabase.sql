/* Find the average score for each country 
and return only those countries with an average score greater than 430 */

/*
Having clause must be used with group by clause and is used to filter data after aggregation
*/

SELECT 
	country,
	AVG(score) AS Avg_score
FROM customers
GROUP BY country


SELECT 
	country,
	AVG(score) AS Avg_score
FROM customers
GROUP BY country
HAVING AVG(score) >430
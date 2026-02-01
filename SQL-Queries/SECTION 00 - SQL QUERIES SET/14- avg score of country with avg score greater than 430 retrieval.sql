/* Find the average score for each country
   and return only those countries with an average score greater than 430 */

SELECT
	country,
	AVG(score) AS avg_score
FROM customers
GROUP BY country
HAVING AVG(score) > 430
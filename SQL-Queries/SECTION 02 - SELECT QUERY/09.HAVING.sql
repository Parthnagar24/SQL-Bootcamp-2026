/* 09.Find the average score for each country
considering only customers with score not equal to zero 
and return only those countries with an average score of greater than 430 */

SELECT *
FROM customers


SELECT 
country,
AVG(score) AS AVERAGE_SCORE 
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score) >430
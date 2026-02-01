/* Retrieve the name, country, and score of customers 
   whose score is not equal to 0
   and sort the results by the highest score first. */

SELECT
	first_name,
	country,
	score
FROM customers
WHERE score!=0
ORDER BY score DESC

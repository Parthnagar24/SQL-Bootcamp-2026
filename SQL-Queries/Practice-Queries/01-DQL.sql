-- Retrieve All Customer Data
SELECT *
FROM customers

-- Retrieve All Order Data
SELECT * 
FROM orders

-- Retrieve each customer's name, country, and score.
SELECT
	country,
	first_name,
	score
FROM customers

-- Retrieve customers with a score not equal to 0
SELECT *
FROM customers
WHERE score!=0

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve the name and country of customers from Germany
SELECT
	first_name,
	country
FROM customers
WHERE country = 'Germany'

/* Retrieve all customers and 
   sort the results by the highest score first. */
SELECT *
FROM customers 
ORDER BY score DESC

   /* Retrieve all customers and 
   sort the results by the lowest score first. */
SELECT *
FROM customers
ORDER BY score ASC

   /* Retrieve all customers and 
   sort the results by the country. */
SELECT *
FROM customers
ORDER BY country DESC

   /* Retrieve all customers and 
   sort the results by the country and then by the highest score. */
   SELECT *
   FROM customers
   ORDER BY country ASC,
   score DESC

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

   -- Find the total score for each country
SELECT
country,
SUM(score) AS total_score
FROM customers
GROUP BY country

   -- Find the total score and total number of customers for each country
   /* Find the average score for each country
   and return only those countries with an average score greater than 430 */
SELECT 
country,
AVG(score) AS AVERAGE_score,
COUNT(id) AS total_id
FROM customers
GROUP BY country
HAVING AVG(score)>430

   /* Find the average score for each country
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430 */
SELECT 
country,
AVG(score) AS AVERAGE_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430

-- Return Unique list of all countries
SELECT DISTINCT
country
FROM customers

-- Retrieve only 3 Customers
SELECT TOP 3*
FROM customers

-- Retrieve the Top 3 Customers with the Highest Scores
SELECT TOP 3*
FROM customers
ORDER BY score DESC

-- Retrieve the Lowest 2 Customers based on the score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- Get the Two Most Recent Orders
SELECT TOP 2*
FROM orders
ORDER BY order_date DESC

/* Calculate the average score for each country 
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430
   and sort the results by the highest average score first. */
SELECT
country,
AVG(score)
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430
ORDER BY AVG(score) DESC

   /* Selecting Static Data */
-- Select a static or constant value without accessing any table
SELECT
'12343243' AS integer_value,
'HELLO' AS string_value

-- Assign a constant value to a column in a query
SELECT
	id,
	first_name,
	'column_new' AS column_5
FROM customers
-- Data Quey Language (DDL) 

--1. Retrieve all data from customers

SELECT *
FROM customers

--2. Retrieve all data from customers

SELECT * 
FROM orders

-- 3.Retrieve each customer's name, country, and score.

SELECT
	first_name,
	country,
	score
FROM customers

---- 4.Retrieve each customer's id, order date, and sales.

SELECT 
	customer_id,
	order_date,
	sales
FROM orders

-- 5. Retrieve customers with a score not equal to 0

--SELECT *
SELECT
	first_name,
	score
FROM customers
WHERE score!=0

--6. Retrieve customers who have sales greater than 20

SELECT *
FROM orders
WHERE sales>20

--7.Retrieve customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany'

--8.Retrieve the name and country of customers from Germany

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany'

/* 9.Retrieve all customers and 
   sort the results by the highest score first. */

SELECT *
FROM customers
ORDER BY score DESC

/* 10.Retrieve all customers and 
   sort the results by the lowest score first. */

SELECT *
FROM customers
ORDER BY score ASC

/* 11.Retrieve all customers and 
   sort the results by the country. */

SELECT *
FROM customers
ORDER BY country ASC

/* 12.Retrieve all customers and 
   sort the results by the country and then by the highest score. */

SELECT *
FROM customers
ORDER BY 
	country ASC,
	score DESC

/* 13.Retrieve the name, country, and score of customers 
   whose score is not equal to 0
   and sort the results by the highest score first. */

SELECT 
	first_name,
	country,
	score
FROM customers
WHERE score!=0
ORDER BY score DESC

---- 14.Find the total score for each country

SELECT 
country,
SUM(score) AS TOTAL_SCORE_COUNTRY
FROM customers
GROUP BY country

/* 15.This will not work because 'first_name' is neither part of the GROUP BY 
   nor wrapped in an aggregate function. SQL doesn't know how to handle this column. */
   
SELECT 
    country,
    first_name,
    SUM(score) AS total_score
FROM customers
GROUP BY country


-- 16.Find the total score and total number of customers for each country

SELECT
	country,
	SUM(score) AS total_score,
	COUNT(id)
FROM customers
GROUP BY country

/* 17.Find the average score for each country
   and return only those countries with an average score greater than 430 */

SELECT 
	country,
	AVG(score) AS average_score
FROM customers
GROUP BY country
HAVING AVG(score)>430

/* 18.Find the average score for each country
considering only customers with a score not equal to 0
and return only those countries with an average score greater than 430 */

SELECT 
	country,
	AVG(score) AS average_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430

--19. Return Unique list of all countries

SELECT DISTINCT
	country
FROM customers

--20.Retrieve only 3 Customers

SELECT TOP 3 *
FROM customers

--21.Retrieve the Top 3 Customers with the Highest Scores

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- 22.Retrieve the Lowest 2 Customers based on the score

SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- 23.Get the Two Most Recent Orders

SELECT TOP 2 * 
FROM orders
ORDER BY order_date DESC

/* 24.Calculate the average score for each country 
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430
   and sort the results by the highest average score first. */

SELECT
	country,
	AVG(score) AS AVERAGE_SCORE
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430
ORDER BY AVG(score) DESC


-- 25.Execute multiple queries at once
SELECT * FROM customers;
SELECT * FROM orders;

/* 26.Selecting Static Data */
-- Select a static or constant value without accessing any table
SELECT 123 AS static_number;

SELECT 'Hello' AS static_string;

-- 27.Assign a constant value to a column in a query
SELECT
    id,
    first_name,
    'New Customer' AS customer_type
FROM customers;
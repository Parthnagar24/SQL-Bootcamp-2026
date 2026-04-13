-- 1. Find all customers:
-- - Not from USA
-- - Score greater than 300
-- - Name does NOT contain 'a'

SELECT *
FROM customers
WHERE
	country NOT IN ('USA')
	AND score > 300
	AND NOT first_name LIKE '%a%'

-- 2. Find orders:
-- - Sales between 10 and 50
-- - Order month is March or April
-- - Sales should not be NULL

SELECT *
FROM orders
WHERE
	sales BETWEEN 10 AND 50
	AND (MONTH(order_date) =3 OR MONTH(order_date) =4)
	AND sales IS NOT NULL

-- 3. Find countries:
-- - Having more than 3 customers
-- - Average score greater than 400

SELECT 
	country,
	COUNT(*) NO_OF_CUST_PER_COUNTRY,
	AVG(score) AS avg_per_country
FROM customers
GROUP BY country
HAVING 
COUNT(*) > 3 AND AVG(score) >400


-- 4. Find customers:
-- - From USA or UK
-- - Score is NOT between 200 and 500
-- - Name starts with 'A' or ends with 'n'

SELECT *
FROM customers
WHERE
	country IN ('USA','UK')
	AND NOT score BETWEEN 200 AND 500
	AND (first_name LIKE 'A%' OR first_name LIKE '%n')


-- 5. Find top 5 customers:
-- - Highest score
-- - Ignore score = 0
-- - Ignore NULL scores

SELECT TOP 5 *
FROM customers
WHERE score IS NOT NULL AND score <> 0
ORDER BY score DESC;

-- 6. Find countries:
-- - Where total score is greater than 800
-- - And number of customers is at least 2
-- - Sort by total score descending

SELECT 
country,
COUNT(*) AS number_of_customers,
SUM(score) AS total_Score
FROM customers
GROUP BY country
HAVING COUNT(*) >=2 AND SUM(score)>800
ORDER BY SUM(score) DESC
	
-- 8. Find customers:
-- - Name contains 'a' at least twice

SELECT *
FROM customers
WHERE first_name LIKE '%a%a%'

-- 9. Find countries:
-- - Where no customer has score less than 100

SELECT country
FROM customers
GROUP BY country
HAVING MIN(score) >= 100;

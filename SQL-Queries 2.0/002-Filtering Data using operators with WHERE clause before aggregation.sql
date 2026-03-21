--FILTERING DATA USING OPERATORS WITH WHERE CLAUSE BEFORE AGGREGATION

--01.COMPARISON OPERATORS

--retrive orders with sales greater than 10 or equal to 10

SELECT *
FROM orders
WHERE sales > 10

SELECT *
FROM orders
WHERE sales >= 10

--retrieve customers with score less than 500 or equal to 500

SELECT *
FROM customers
WHERE score < 500

SELECT *
FROM customers
WHERE score <= 500

--retrieve customers where score is 0

SELECT *
FROM customers 
WHERE score = 0

--retrive orders where sales is not 20

SELECT *
FROM orders
WHERE sales <>20


--02.LOGICAL OPERATORS

--retrieve customers whose score is more than 300 and are from uk

SELECT 
	country,
	score,
	first_name
FROM customers
WHERE score >300 AND country ='UK'

--retrieve customers whose score is  300 or are from usa

SELECT 
	country,
	score,
	first_name
FROM customers
WHERE score =300 OR country ='USA'

--retrieve orders where sales is not greater than 10

SELECT *
FROM orders
WHERE NOT sales >10


--03.RANGE OPERATOR

--retrieve customers whose score lies between 10 and 600

SELECT *
FROM customers
WHERE score BETWEEN 10 AND 600

SELECT *
FROM customers
WHERE score>=10 AND score<=600  --alternative approach

--04.MEMBERSHIP OPERATOR

--retrieve customers who belong to countries usa , uk

SELECT *
FROM customers
WHERE country IN ('USA','UK')

--retrieve customers who do not belong to countries usa , uk

SELECT *
FROM customers
WHERE country NOT IN ('USA','UK')


--05.SEARCH OPERATOR

--retrieve customers whose name has 'a'

SELECT *
FROM customers
WHERE first_name LIKE '%a%'


--retrieve customers whose name starts with 'm'
SELECT *
FROM customers
WHERE first_name LIKE 'm%'

--retrieve customers whose name ends with 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r'

--retrieve customers whose name has r at 3rd position

SELECT *
FROM customers
WHERE first_name LIKE '__r%'


---- Find customers:
-- 1. From USA or UK
-- 2. Score between 200 and 800
-- 3. Name contains 'a'
-- 4. Score should not be NULL

SELECT *
FROM customers
WHERE 
	country IN ('USA','UK') AND
	score BETWEEN 200 AND 800 AND
	first_name LIKE '%a%' AND
	score IS NOT NULL
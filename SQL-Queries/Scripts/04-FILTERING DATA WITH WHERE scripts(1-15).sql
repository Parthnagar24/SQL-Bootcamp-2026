-- Filtering Data

-- 1.Retrieve all customers from Germany.

SELECT *
FROM customers
WHERE country = 'Germany'

-- 2.Retrieve all customers who are not from Germany.

SELECT *
FROM customers
WHERE country != 'Germany'

-- 3.Retrieve all customers with a score greater than 500.

SELECT *
FROM customers
WHERE score>500

-- 4.Retrieve all customers with a score of 500 or more.

SELECT *
FROM customers
WHERE score>=500

-- 5.Retrieve all customers with a score less than 500.

SELECT *
FROM customers
WHERE score<500

-- 6.Retrieve all customers with a score of 500 or less.

SELECT *
FROM customers
WHERE score<=500

-- 7.Retrieve all customers who are from the USA and have a score greater than 500.

SELECT *
FROM customers
WHERE country ='USA' AND score>500

-- 8.Retrieve all customers who are either from the USA or have a score greater than 500.

SELECT *
FROM customers
WHERE country ='USA' OR score>500

-- 9.Retrieve all customers with a score not less than 500.

SELECT *
FROM customers
WHERE NOT score<500

--10. Retrieve all customers whose score falls in the range between 100 and 500.

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

-- Alternative method (Equivalent to BETWEEN)
SELECT *
FROM customers
WHERE score >= 100 AND score <= 500

-- 11.Retrieve all customers from either Germany or the USA.

SELECT *
FROM customers 
WHERE country IN ('Germany','USA')

SELECT *
FROM customers 
WHERE country NOT IN ('Germany','USA')

-- 12.Find all customers whose first name starts with 'M'.

SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- 13.Find all customers whose first name ends with 'n'.

SELECT *
FROM customers
WHERE first_name LIKE '%n'

-- 14.Find all customers whose first name contains 'r'.

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

-- 15.Find all customers whose first name has 'r' in the third position.

SELECT *
FROM customers
WHERE first_name LIKE '__r%'
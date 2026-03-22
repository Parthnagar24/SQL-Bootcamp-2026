-- LEVEL 1: BASIC DQL & FILTERING (1–10)


-- 1. Retrieve all customers from the Customers table
SELECT * FROM customers

-- 2. Retrieve customers whose score is greater than 500
SELECT * FROM customers
WHERE score > 500

-- 3. Retrieve customers whose score is between 200 and 800
SELECT * FROM customers
WHERE score BETWEEN 200 AND 500

-- 4. Retrieve customers whose name starts with 'A'
SELECT * FROM customers
WHERE first_name LIKE 'A%'

-- 5. Retrieve customers whose name ends with 'n'
SELECT * FROM customers
WHERE first_name LIKE '%n'

-- 6. Retrieve customers from Germany OR France
SELECT * FROM customers
WHERE COUNTRY IN('Germany','USA')


-- 7. Retrieve customers NOT from Germany
SELECT * FROM customers
WHERE COUNTRY NOT IN('Germany')

-- 8. Retrieve customers with NULL scores
SELECT * FROM customers
WHERE score IS NULL

-- 9. Retrieve customers with non-NULL scores
SELECT * FROM customers
WHERE score IS NOT NULL

-- 10. Sort customers by score in descending order
SELECT * FROM customers
ORDER BY score DESC


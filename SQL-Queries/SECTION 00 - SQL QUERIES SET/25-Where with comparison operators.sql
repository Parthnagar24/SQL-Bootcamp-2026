-- Retrieve all customers from Germany.

SELECT *
FROM customers
WHERE country  = 'Germany'

-- Retrieve all customers who are not from Germany.

SELECT *
FROM customers
--WHERE country  != 'Germany'
WHERE country  <> 'Germany'

-- Retrieve all customers with a score greater than 500.

SELECT *
FROM customers
WHERE score>500

-- Retrieve all customers with a score of 500 or more.

SELECT *
FROM customers
WHERE score>=500

-- Retrieve all customers with a score less than 500.

SELECT *
FROM customers
WHERE score<500

-- Retrieve all customers with a score of 500 or less.

SELECT *
FROM customers
WHERE score<=500
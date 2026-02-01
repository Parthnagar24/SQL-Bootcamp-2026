-- Retrieve all customers from either Germany or the USA.
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA')

SELECT *
FROM customers
WHERE country NOT IN ('Germany', 'USA')


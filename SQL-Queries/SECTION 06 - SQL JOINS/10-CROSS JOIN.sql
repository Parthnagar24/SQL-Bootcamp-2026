-- CROSS JOIN : combines every row from left with every row from right
--CARTESIAN PRODUCT 

-- generate all possible combinations of customers and orders
SELECT * FROM customers
SELECT * FROM orders

SELECT * 
FROM customers AS c
CROSS JOIN orders AS o


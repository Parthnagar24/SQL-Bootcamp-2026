-- MEMBERSHIP OPERATOR

--IN

--retrieve customers from germany or usa

SELECT *
FROM customers
WHERE  country ='Germany' OR country='USA'

SELECT *
FROM customers
WHERE  country IN('Germany','USA')

--NOT IN

--retrieve customers not from germany or usa
SELECT *
FROM customers
WHERE  country NOT IN('Germany','USA')
--LOGICAL OPERATORS

-- AND 

--retrieve all customers from USA and score>500

SELECT *
FROM customers
WHERE country='USA' AND score>500


-- OR
--retrieve all customers from USA or must have score>500

SELECT *
FROM customers
WHERE country='USA' OR score>500

--NOT

--retrieve all customers not from USA


SELECT *
FROM customers
WHERE NOT country='USA' 

SELECT *
FROM customers
WHERE NOT score>=500

--RANGE OPERATOR

-- BETWEEN

--retrieve all customer score is btw 100 to 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500


SELECT *
FROM customers
WHERE score>=100 AND score<=500


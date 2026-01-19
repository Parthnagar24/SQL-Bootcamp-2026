-- RANGE OPERATOR

-- BETWEEN :  CHECK IF A VALUE IS WITHIN A RANGE

SELECT *
FROM customers

-- retrieve all customers whose score falls in the range between 100 and 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500


--
SELECT *
FROM customers
WHERE score >=100 AND score <=500

--Filtering date with where clause

--1.comparison operator

SELECT *
FROM customers
WHERE score = 0   --only returns customer with score 0


SELECT *
FROM customers
WHERE score <>0 -- returns customer with score not 0


SELECT *
FROM customers
WHERE score > 0 --returns customer with score greater than 0

SELECT *
FROM customers
WHERE score >= 0 --returns customer with score greater than  and equal to 0


SELECT *
FROM customers
WHERE score < 0 --returns customer with score less than 0

SELECT *
FROM customers
WHERE score <= 0 --returns customer with score less than  and equal to 0


--02.Logical Operators

SELECT *
FROM customers
WHERE 
	score = 0 AND country ='USA' --both condition must be true


SELECT *
FROM customers
WHERE 
	score = 0 OR country ='USA' --any 1 condition must be true

SELECT *
FROM customers
WHERE NOT score <500  --retrieve customer where score is not less than 500


--03.Range Operator

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500  --both values are inclusive

--alternate best approach
SELECT *
FROM customers
WHERE score >=100 AND score <=500


--04.Membership operator

SELECT *
FROM customers
WHERE country IN ('USA','Germany') --returns only usa and germany based customers


SELECT *
FROM customers
WHERE country NOT IN ('USA','Germany') 

--05.SEARCH operator

SELECT 
first_name
FROM customers
WHERE first_name LIKE '%a%'  --contains a anywhere

SELECT 
first_name
FROM customers
WHERE first_name LIKE '%a'  --name must end with a

SELECT 
first_name
FROM customers
WHERE first_name LIKE 'a%' --name must start with a

SELECT 
first_name
FROM customers
WHERE first_name LIKE '_a%' --a must come at 2nd postion

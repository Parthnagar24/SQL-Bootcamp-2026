-- COMPARISON OPERATORS

--1 retrieve all coustomers from germany  '='

SELECT *
FROM customers
WHERE country ='Germany'

--2 retrieve all coustomers who are not  from germany  '!=' or '<>'

SELECT *
FROM customers
WHERE country !='Germany'

--3 retrieve all coustomers with score greater than 500   '>'

SELECT *
FROM customers
WHERE score>500

--4  retrieve all coustomers with score of 500 or more  '>='

SELECT *
FROM customers
WHERE score>=500

--5 retrieve all coustomers with score lesser than 500   '<'

SELECT *
FROM customers
WHERE score<500

--6 retrieve all coustomers with score lesser than or equal to 500   '<='

SELECT *
FROM customers
WHERE score<=500
-- LOGICAL OPERATOR

-- AND : ALL CONDITIONS MUST BE TRUE

--1. retrieve all customers country = usa and score greater than 500
SELECT *
FROM customers
WHERE country ='USA' AND score>500

-- OR : AT LEAST 1 CONDITIONS NEEDS TO BE TRUE

----2. retrieve all customers country = usa or score greater than 500
SELECT *
FROM customers
WHERE country ='USA' OR score>500

--NOT : (REVERSE) EXCLUDING MATCHING VALUES

--3.retrieve all customers with a score NOT LESS THAN 500

SELECT * 
FROM customers
WHERE NOT score < 500
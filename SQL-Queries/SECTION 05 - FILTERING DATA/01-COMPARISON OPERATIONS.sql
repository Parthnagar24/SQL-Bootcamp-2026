-- comparison operators

-- Expression Operation Expression     (condition)

SELECT *
FROM customers

--1. retrieve all customers from germany  
--using '=' operator : checks if 2 values are equal

SELECT *
FROM customers
WHERE country = 'Germany'

--2.retrieve all customers not from germany
-- use of <> !=  : check if 2 values are not equal 

SELECT *
FROM customers
WHERE country != 'germany'                      --WHERE country <> 'Germany'

--3.retrieve all customers with a score  greater than 500

SELECT *
FROM customers
--WHERE score>500           -- use of   > : value greater than
WHERE score >=500           -- use of  >= " value greater than or equal to

--4.retrieve all customers with a score  lesser than 500

SELECT *
FROM customers
--WHERE score <500            -- use of   < : value lesser than
WHERE score <= 500            -- use of <= : value lesser than or equal to
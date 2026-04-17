--FILTERING BASED QUERIES

--retrieve customers where score is 0
SELECT * FROM customers
WHERE score = 0

--retrieve customers where score is not 0
SELECT * FROM customers
WHERE score <> 0

--retrieve customers with score greater than 500
SELECT * FROM customers
WHERE score >500


SELECT * FROM customers
WHERE score >=500

--retrieve customers with score lesser than 400

SELECT * FROM customers
WHERE score <400


SELECT * FROM customers
WHERE score <=400

--retrieve customers that belongs either to Germany or Usa

SELECT * FROM customers
WHERE country ='Germany' OR country='USA'

--retrieve customers that belongs  to Germany and have score > than 500\
SELECT * FROM customers
WHERE score > 500 AND country ='Germany'

--retrieve customers score that is not less than 500

SELECT * FROM customers
WHERE NOT score <500

--retrieve customers that belongs either to Germany or Usa

SELECT * FROM customers
WHERE  country IN('Germany','USA')

--retrieve customers that DONOT belongs either to Germany or Usa

SELECT * FROM customers
WHERE  country NOT IN('Germany','USA')

--retrive customers where score ranges from 200 to 400

SELECT * FROM customers
WHERE score BETWEEN 200 AND 400

--retrieve customers firstname having p 

SELECT * FROM customers
WHERE first_name LIKE '%p%'

--retrieve customers firstname having m in start

SELECT * FROM customers
WHERE first_name LIKE 'm%'

--retrieve customers firstname having n in end
SELECT * FROM customers
WHERE first_name LIKE '%n'
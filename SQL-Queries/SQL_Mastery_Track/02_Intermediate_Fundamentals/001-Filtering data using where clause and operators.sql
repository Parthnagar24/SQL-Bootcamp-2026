-- Retrieve all customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve all customers who are not from Germany

SELECT *
FROM customers
WHERE country <> 'Germany'

-- Retrieve all customers with a score greater than 500

SELECT *
FROM customers
WHERE score > 500

-- Retrieve all customers with a score of 500 or more

SELECT *
FROM customers
WHERE score >= 500

-- Retrieve all customers with a score less than 500

SELECT *
FROM customers
WHERE score < 500

-- Retrieve all customers with a score of 500 or less

SELECT *
FROM customers
WHERE score <= 500

-- Retrieve all customers who are from the USA and have a score greater than 500

SELECT *
FROM customers
WHERE country ='USA' AND score > 500

-- Retrieve all customers who are either from the USA or have a score greater than 500

SELECT *
FROM customers
WHERE country ='USA' OR score > 500

-- Retrieve all customers with a score not less than 500

SELECT*
FROM customers
WHERE NOT score < 500

-- Retrieve all customers whose score falls between 100 and 500

SELECT *
FROM customers
WHERE score >=100 AND score <=500

-- Retrieve all customers whose score is between 100 and 500 using AND condition

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

-- Retrieve all customers from either Germany or the USA

SELECT *
FROM customers
WHERE country IN ('Germany','USA')

-- Find all customers whose first name starts with 'M'

SELECT * FROM customers
WHERE first_name LIKE 'M%'

-- Find all customers whose first name ends with 'n'
SELECT * FROM customers
WHERE first_name LIKE '%n'

-- Find all customers whose first name contains 'r'

SELECT * FROM customers
WHERE first_name LIKE '%r%'

-- Find all customers whose first name has 'r' in the third position

SELECT * FROM customers
WHERE first_name LIKE '__r%'

-- Retrieve all orders where sales is greater than 200

SELECT * FROM orders WHERE sales >200

-- Retrieve all orders where quantity is between 2 and 5

SELECT * FROM Sales.Orders WHERE quantity BETWEEN 2 AND 5

-- Retrieve all products whose price is greater than 50

SELECT * FROM Sales.Products WHERE Price>50

-- Retrieve all products whose category is either 'Electronics' or 'Furniture'

SELECT * FROM Sales.Products 
WHERE Category IN ('Electronics' , 'Furniture')

-- Find products whose name starts with 'S'

SELECT * FROM Sales.Products 
WHERE Product LIKE 'S%'

-- Find all orders placed in the year 2025

SELECT *
FROM Sales.Orders
WHERE YEAR(OrderDate)= '2025'
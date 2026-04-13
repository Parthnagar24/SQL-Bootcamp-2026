--1. SCALAR SUBQUERY (Single Value)

-- Find orders with sales greater than average sales
SELECT *
FROM Orders
WHERE Sales > (SELECT AVG(Sales) FROM Orders)

-- 1. Find customers whose score is greater than average score

SELECT *
FROM customers
WHERE score >
(SELECT AVG(score) FROM customers)

-- 2. Find products whose price is higher than average price
SELECT *
FROM Sales.Products
WHERE price >
(SELECT AVG(price) FROM Sales.Products)

-- 3. Show each order with average sales in a column (SELECT subquery)

-- 4. Find employees earning more than overall avg salary
SELECT *
FROM Sales.Employees
WHERE salary >
(SELECT AVG(salary) FROM Sales.Employees)

-- 5. Find orders with sales less than max sales

SELECT *
FROM Orders
WHERE Sales < (SELECT MAX(Sales) FROM Orders)
-- Find the total number of customers
SELECT COUNT(*) AS total_customers
FROM customers

-- Find the total sales of all orders
SELECT SUM(sales) AS total_sales
FROM orders

-- Find the average sales of all orders
SELECT AVG(sales) AS avg_sales
FROM orders

-- Find the highest score among customers
SELECT MAX(score) AS max_score
FROM customers

-- Find the lowest score among customers
SELECT MIN(score) AS min_score
FROM customers

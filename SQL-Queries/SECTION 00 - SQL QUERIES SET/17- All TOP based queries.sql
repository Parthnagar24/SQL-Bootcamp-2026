-- Retrieve only 3 Customers

SELECT TOP 3 *
FROM customers

-- Retrieve the Top 3 Customers with the Highest Scores

SELECT TOP 3 *
FROM customers
ORDER BY score DESC   -- 1ST TO GET EXECUTED

-- Retrieve the Lowest 2 Customers based on the score

SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- Get the Two Most Recent Orders

SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC


-- Return unique list of all countries

SELECT DISTINCT 
	country
FROM customers


-- Retrieve only 3 customers

SELECT TOP 3
*
FROM customers

-- Retrieve only 3 customers with the highest score

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

---- Retrieve lowest 2 customers based on score

SELECT TOP 2 *
FROM customers
ORDER BY score 

-- Get the 2 most recent orders

SELECT TOP 2*
FROM orders
ORDER BY order_date DESC
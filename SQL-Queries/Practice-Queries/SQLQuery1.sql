-- Select all customers.

SELECT * 
FROM customers


--Show only the first names of customers.

SELECT 
first_name
FROM customers

-- Get all customers from India.

SELECT *
FROM customers
WHERE country='UK'

--Show customer names sorted alphabetically.

SELECT 
first_name 
FROM customers
ORDER BY first_name ASC

--Show top 5 customers with highest score.

SELECT 
first_name
FROM customers
ORDER BY score DESC

--Show total number of customers.

SELECT 

country,
COUNT(id) AS Number_of_customers
FROM customers
GROUP BY country


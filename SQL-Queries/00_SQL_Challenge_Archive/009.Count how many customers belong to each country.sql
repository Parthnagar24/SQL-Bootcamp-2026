--009.Count how many customers belong to each country.

SELECT * FROM customers

SELECT 
	country,
	COUNT(id) AS number_of_customer_for_each_country
FROM customers
GROUP BY country
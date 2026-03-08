--Count customers per country.

SELECT 
	country,
	COUNT(*)  AS number_of_customers_per_country
FROM customers
GROUP BY country
--011.Find countries having more than 1 customer.

SELECT
	country,
	COUNT(id) AS number_of_customers_per_country
FROM customers
GROUP BY country
HAVING COUNT(id) > 1
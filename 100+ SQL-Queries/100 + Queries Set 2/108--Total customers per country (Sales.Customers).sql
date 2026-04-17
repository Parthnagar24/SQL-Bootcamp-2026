--Total customers per country (Sales.Customers)

SELECT
	Country,
	COUNT(*) AS total_customers_per_country
FROM Sales.Customers
GROUP BY Country
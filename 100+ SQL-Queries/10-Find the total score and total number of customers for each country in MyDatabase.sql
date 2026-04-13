--Find the total score and total number of customers for each country

SELECT
	country,
	SUM(score) AS TotalScore,
	COUNT(id) AS TotalCustomer
FROM customers
GROUP BY country
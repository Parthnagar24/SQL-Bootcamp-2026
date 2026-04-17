--Countries with more than 1 customer (Sales.Customers)

SELECT 
	Country,
	COUNT(CustomerID) AS cust_per_country
FROM Sales.Customers
GROUP BY Country
HAVING COUNT(CustomerID)>1
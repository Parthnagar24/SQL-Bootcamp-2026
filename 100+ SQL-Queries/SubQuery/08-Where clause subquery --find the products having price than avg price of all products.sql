--find the products having price than avg price of all products

SELECT
ProductID,
Price,
(
	SELECT 
	AVG(Price) AS avg_price
	FROM Sales.Products)  avg_price
FROM Sales.Products
WHERE price >(
	SELECT 
	AVG(Price) AS avg_price
	FROM Sales.Products) 
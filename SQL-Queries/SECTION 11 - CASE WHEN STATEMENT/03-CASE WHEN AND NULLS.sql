---Handling NULLS

--find avg score of customers and treat nulls as 0

SELECT 
CustomerID,
Score,

CASE
	WHEN Score IS NULL THEN 0
	ELSE Score
END AS scoreNull,
AVG(Score) OVER()
FROM Sales.Customers

--count how many times each customer has made an order with sales greater than 30

SELECT 
OrderID,
CustomerID,
Sales,
CASE 
	WHEN Sales>30 THEN 1
	ELSE 0
END SalesFLag
FROM Sales.Orders
ORDER BY CustomerID
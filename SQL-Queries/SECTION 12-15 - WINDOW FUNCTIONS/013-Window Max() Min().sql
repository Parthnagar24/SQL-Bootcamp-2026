-- Window MIN() MAX()

SELECT 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(Sales) OVER(),
	MAX(Sales) OVER(PARTITION BY ProductID),
	MIN(Sales) OVER(PARTITION BY ProductID)
FROM Sales.Orders
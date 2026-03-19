-- Window COUNT()

SELECT 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	COUNT(*) OVER(PARTITION BY ProductID) AS Total_rows,
	COUNT(1) OVER(PARTITION BY ProductID) AS Total_rows,
	COUNT(Sales) OVER(PARTITION BY ProductID) AS Total_Sales,
	COUNT(OrderDate) OVER(PARTITION BY ProductID) AS Date_per_order
FROM Sales.Orders
-- Window AVG()

SELECT 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID),
	AVG(Sales) OVER(PARTITION BY ProductID) AS Total_sales_per_product
FROM Sales.Orders
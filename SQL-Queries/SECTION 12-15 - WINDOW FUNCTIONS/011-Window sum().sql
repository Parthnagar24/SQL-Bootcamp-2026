-- Window SUM()

SELECT 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_sales_per_product
FROM Sales.Orders
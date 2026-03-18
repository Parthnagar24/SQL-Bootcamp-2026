--window(analtyical) functions  : row level calculations

--find total sales across all orders

SELECT 
	SUM(Sales) AS Total_Sales
FROM Sales.Orders


--find total sales for each product

SELECT
	ProductID,
	SUM(Sales) AS Total_Sales
FROM Sales.Orders
GROUP BY ProductID

--find total sales for each product, include orderid and order date details

SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) AS Total_Sales
FROM Sales.Orders
GROUP BY 
	ProductID,
	OrderID,
	OrderDate


SELECT
	OrderID,
	OrderDate,
	ProductId,
	SUM(Sales) OVER(PARTITION BY ProductID) AS TotalSalesProduct
FROM Sales.Orders

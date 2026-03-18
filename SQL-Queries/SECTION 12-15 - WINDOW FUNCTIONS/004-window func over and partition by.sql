--Find the sales across all orders
--aditionally provide details such as orderId,order date

SELECT * FROM Sales.Orders

SELECT 
	OrderId,
	OrderDate,
	SUM(Sales) OVER() AS Total_Sales
FROM Sales.Orders

--Find the sales across all products
--aditionally provide details such as orderId,order date

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales
FROM Sales.Orders

--Find the sales across all orders
--Find the sales across all products
--aditionally provide details such as orderId,order date

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER() AS Total_Sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales
FROM Sales.Orders



--Find the sales across all orders
--Find the sales across all products
--Find the sales across all products and orderstatus combine
--aditionally provide details such as orderId,order date

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	OrderStatus,
	SUM(Sales) OVER() AS Total_Sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales,
	SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus ) AS Total_Sales
FROM Sales.Orders
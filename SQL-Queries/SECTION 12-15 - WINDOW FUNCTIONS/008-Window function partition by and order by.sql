SELECT
	OrderID,
	OrderDate,
	customerID,
	SUM(Sales) OVER() AS Total_sum_for_all_order
FROM Sales.Orders


SELECT
	OrderID,
	OrderDate,
	customerID,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_sum_for_all_order
FROM Sales.Orders


SELECT
	OrderID,
	OrderDate,
	customerID,
	ProductID,
	OrderStatus,
	SUM(Sales) OVER(ORDER BY OrderStatus DESC) AS Total_sum_for_all_order
FROM Sales.Orders

SELECT
	OrderID,
	OrderDate,
	customerID,
	ProductID,
	OrderStatus,
	SUM(Sales) OVER(PARTITION BY ProductID ORDER BY OrderStatus DESC) AS Total_sum_for_all_order
FROM Sales.Orders

SELECT
	OrderID,
	OrderDate,
	customerID,
	ProductID,
	OrderStatus,
	SUM(Sales) OVER(PARTITION BY ProductID,OrderStatus) AS Total_sum_for_all_order
FROM Sales.Orders
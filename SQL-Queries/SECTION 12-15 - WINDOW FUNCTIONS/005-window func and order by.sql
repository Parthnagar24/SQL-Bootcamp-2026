--rank each order based on their sales from highest to lowest
--additionally provide order id and order date

SELECT 
	OrderID,
	OrderDate,
	Sales,
	RANK() OVER(ORDER BY Sales DESC) AS HL_Sales
FROM Sales.Orders
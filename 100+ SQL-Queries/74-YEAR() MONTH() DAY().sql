SELECT 
	OrderDate,
	DAY(OrderDate) AS day_of_order,
	MONTH(OrderDate) AS month_of_order,
	YEAR(OrderDate) As year_of_order
FROM Sales.Orders
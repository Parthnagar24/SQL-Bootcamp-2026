SELECT
	OrderDate,
	DATEPART(year,OrderDate) As yy,
	DATEPART(month,OrderDate) AS mm,
	DATEPART(day,OrderDate) AS dd,
	DATEPART(week,OrderDate) AS wk,
	DATEPART(quarter,OrderDate) AS qt
FROM Sales.Orders

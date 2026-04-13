
SELECT
	OrderDate,
	DATETRUNC(second,OrderDate),
	DATETRUNC(minute,OrderDate),
	DATETRUNC(hour,OrderDate),
	DATETRUNC(day,OrderDate),
	DATETRUNC(month,OrderDate),
	DATETRUNC(year,OrderDate)
FROM Sales.Orders
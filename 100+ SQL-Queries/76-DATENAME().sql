SELECT
	OrderDate,
	DATENAME(month,OrderDate) AS mm,
	LEFT(DATENAME(month,OrderDate),3) AS mm3,
	DATENAME(weekday,OrderDate) AS wkd
FROM Sales.Orders
--047.Display first 3 characters of employee names.

SELECT
	FirstName,
	LEN(FirstName),
	TRIM(FirstName),
	LEN(TRIM(FirstName)),
	LEFT(FirstName,3),
	LEFT(TRIM(FirstName),3)
FROM Sales.Employees
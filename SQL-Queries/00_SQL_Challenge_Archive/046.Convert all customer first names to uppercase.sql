--046.Convert all customer first names to uppercase.

SELECT
	UPPER(FirstName),
	UPPER(LastName)
FROM Sales.Customers
--015.Display products whose category occurs more than once.

SELECT * FROM Sales.Products


SELECT
	Category,
	COUNT(*)
FROM Sales.Products
GROUP BY Category
HAVING COUNT(*) > 1

/*
COUNT(*) means:

“How many rows exist in this group?”  */

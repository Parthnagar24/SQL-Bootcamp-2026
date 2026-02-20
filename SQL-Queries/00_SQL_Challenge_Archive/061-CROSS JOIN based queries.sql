--Generate all possible combinations of customers and products

SELECT *
FROM Sales.Customers AS c
CROSS JOIN Sales.Products AS o


--Find all customer–department combinations.

SELECT *
FROM Sales.Customers AS c
CROSS JOIN Sales.Employees AS o


--Scalar Subquery - 1col 1 row

SELECT
AVG(Sales) AS Avg_Sales
FROM Sales.Orders

--Row Subquery -1col n row

SELECT
CustomerID
FROM Sales.Orders


--Table Subquery -n row n col

SELECT *FROM Sales.Orders
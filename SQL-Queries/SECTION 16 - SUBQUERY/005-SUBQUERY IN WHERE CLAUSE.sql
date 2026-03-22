--SUBQUERY WHERE CLAUSE

--find the products that have a price higher than the average price of all products



SELECT *
FROM Sales.Products
WHERE Price > (SELECT AVG(Price) FROM Sales.Products )

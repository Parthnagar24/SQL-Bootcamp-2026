--PERCENTAGE BASED RANKING

--1.CUME_DIST 

SELECT
Sales,
CUME_DIST() OVER(ORDER BY Sales DESC)
FROM Sales.Orders

--2.PERCENT_RANK

SELECT
Sales,
PERCENT_RANK() OVER(ORDER BY Sales DESC)
FROM Sales.Orders



--find the products that fall within the highest 40% of the prices

SELECT *
FROM(
SELECT 
Product,
Price,
CUME_DIST() OVER(ORDER BY Price DESC) DistRank
FROM Sales.Products
)t
WHERE DistRank <=0.4
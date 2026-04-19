--Location Clause

--FROM clause

/*
Find the products that have a price
higher than the average price of all products
*/

--MAIN QUERY
SELECT
*
FROM
	--SUBQUERY
	(SELECT
	ProductID,
	Price,
	AVG(Price) OVER() AS AVG_PRICE
	FROM Sales.Products)t
WHERE price > AVG_PRICE

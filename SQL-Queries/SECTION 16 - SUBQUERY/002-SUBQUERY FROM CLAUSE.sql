--SUBQUERY IN FROM CLAUSE

--used as temporary table for main query

/*
SELECT col1,col2
FROM  (SELECT col FROM table1 WHERE condition )  AS alias     */ 


--find the products that have a price higher than the average price of all products

--MAINQUERY
SELECT
*
FROM
--subquery
	(SELECT
	ProductID,
	Price,
	AVG(Price) OVER() AvgPrice
	FROM  Sales.Products )t
WHERE Price > AvgPrice


--rank customers based on their total amount of sales

SELECT *,
RANK() OVER(ORDER BY Total_Sale_per_customer DESC)
FROM
--subquery
    (SELECT
	CustomerID,
	SUM(Sales)  AS Total_Sale_per_customer
	FROM Sales.Orders
	GROUP BY CustomerID)t

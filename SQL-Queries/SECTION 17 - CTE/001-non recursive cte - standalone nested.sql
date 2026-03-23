--NON RECURSIVE CTE

/*
WITH CTE_name AS            ---CTE QUERY
(
	SELECT..
	FROM..
	WHERE..)

SELECT ...                 --MAIN QUERY
FROM CTE-name 
WHERE ...
	*/


	--1.STANDALONE CTE

--FIND THE TOTAL SALES PER CUSTOMER

WITH CTE_TOTAL_SALES AS 
(
SELECT 
CustomerID,
SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY CustomerID
)
--Main Query

SELECT
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_sales
FROM Sales.Customers AS c
LEFT JOIN CTE_TOTAL_SALES cts
ON cts.CustomerID = c.CustomerID
ORDER BY CustomerID 



--MULTIPLE STANDALONE

--FIND THE TOTAL SALES PER CUSTOMER
WITH CTE_TOTAL_SALES AS 
(
SELECT 
CustomerID,
SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY CustomerID
)
--FIND THE LAST ORDER DATE PER CUSTOMER
,CTE_LAST_ORDER AS
(
SELECT
CustomerID,
MAX(OrderDate) AS LASTORDER
FROM Sales.Orders
GROUP BY CustomerID
)


--Main Query

SELECT
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_sales,
	cts2.LASTORDER
FROM Sales.Customers AS c
LEFT JOIN CTE_TOTAL_SALES cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN CTE_LAST_ORDER cts2
ON cts2.CustomerID = c.CustomerID

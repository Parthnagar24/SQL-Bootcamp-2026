--Multiple Standalone CTE

--Step 1: FIND THE TOTAL SALES PER CUSTOMERS
WITH CTE_sales AS
	(
		SELECT
			CustomerID,
			SUM(Sales) AS Total_Sales_per_Customers
		FROM Sales.Orders
		GROUP BY CustomerID
    )

--Step 2:FIND THE LAST ORDER DATE PER CUSTOMER
,CTE_date AS
	(
		SELECT
		CustomerID,
		MAX(OrderDate) AS last_order
		FROM Sales.Orders
		GROUP BY CustomerID
	)

--main query
SELECT
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_Sales_per_Customers,
	ctd.last_order
FROM Sales.Customers AS c
LEFT JOIN CTE_sales AS cts 
ON c.CustomerID = cts.CustomerID
LEFT JOIN CTE_date AS ctd
ON c.CustomerID=ctd.CustomerID
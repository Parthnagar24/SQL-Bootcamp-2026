--STANDALONE CTE

--Step 1: FIND THE TOTAL SALES PER CUSTOMERS


WITH CTE_sales AS
	(
		SELECT
			CustomerID,
			SUM(Sales) AS Total_Sales_per_Customers
		FROM Sales.Orders
		GROUP BY CustomerID
    )

--main query
SELECT
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_Sales_per_Customers
FROM Sales.Customers AS c
LEFT JOIN CTE_sales AS cts 
    ON c.CustomerID = cts.CustomerID;
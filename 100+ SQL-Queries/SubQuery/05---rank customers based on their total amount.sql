--rank customers based on their total amount

SELECT
*,
RANK() OVER(ORDER BY total_sales DESC) CustomerRank
FROM
	--SUBQUERY
	(SELECT
	CustomerID,
	SUM(Sales) AS total_sales
	FROM Sales.Orders
	GROUP BY CustomerID)t
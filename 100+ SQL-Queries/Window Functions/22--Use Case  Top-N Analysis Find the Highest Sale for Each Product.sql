--Use Case | Top-N Analysis: Find the Highest Sale for Each Product

SELECT
Sales,
ProductID,
ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC)
FROM Sales.Orders
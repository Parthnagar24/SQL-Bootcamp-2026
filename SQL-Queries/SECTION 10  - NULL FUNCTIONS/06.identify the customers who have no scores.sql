-- identify the customers who have no scores


SELECT 
CustomerID,
Score

FROM Sales.Customers
--WHERE Score IS NULL
WHERE Score IS NOT NULL
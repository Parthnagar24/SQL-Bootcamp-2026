--LIST ALL DETAILS FOR CUSTOMERS WHO HAVE NOT PLACED AN ORDER

SELECT 
c.*,
o.OrderID
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL
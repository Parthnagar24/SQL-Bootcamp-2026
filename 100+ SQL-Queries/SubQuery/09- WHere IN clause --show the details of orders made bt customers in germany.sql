--WHERE 

--IN operator

--show the details of orders made bt customers in germany


SELECT *
FROM Sales.Orders
WHERE CustomerID IN (
						SELECT
						CustomerID
						FROM Sales.Customers
						WHERE Country ='Germany')
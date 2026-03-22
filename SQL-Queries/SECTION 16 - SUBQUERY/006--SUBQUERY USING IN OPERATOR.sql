--SUBQUERY USING IN OPERATOR

--Show the details of orders made by customers in Germany

SELECT 
*
FROM Sales.Orders
WHERE CustomerID IN (SELECT CustomerID FROM Sales.Customers WHERE country IN ('Germany'))
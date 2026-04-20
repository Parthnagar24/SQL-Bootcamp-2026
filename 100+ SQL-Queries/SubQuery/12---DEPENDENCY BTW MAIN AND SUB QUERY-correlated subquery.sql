--DEPENDENCY BTW MAIN AND SUB QUERY
--CORRELATED SUBQUERY 

--show all customers details and find the total orders of each customers

SELECT
*,
(SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID=c.CustomerID) TotalSales
FROM Sales.Customers c



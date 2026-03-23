--DEPENDENCY

--1.CORRELATED SUBQUERY

--show all customer details and find total orders of each customers

SELECT *,
(SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID) AS total_sales
FROM Sales.Customers c

--SUBQUERY IN JOIN CLAUSE

--show all customer details and find the total orders for each customers

SELECT
*
FROM Sales.Customers  AS c
LEFT JOIN
(SELECT CustomerID,
COUNT(OrderID) AS total_orders
FROM Sales.Orders
GROUP BY CustomerID) AS O
ON c.CustomerID = O.CustomerID


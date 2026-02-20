--Show all customers and all orders, matching where possible.


SELECT *
FROM Sales.Customers AS c
FULL JOIN Sales.Orders AS o
ON c.customerID = o.customerID


/*--Find customers who placed orders and customers who didn’t.

SELECT *
FROM Sales.Customers AS c
FULL JOIN Sales.Orders AS o
ON c.customerID = o.customerID
WHERE o.orderID IS NOT NULL AND c.customerID IS NULL */

--Find all mismatches between customers and orders.

SELECT 
    c.CustomerID,
    c.FirstName,
    o.OrderID
FROM Sales.Customers AS c
FULL JOIN Sales.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL 
   OR o.OrderID IS NULL;

--Show all customers and their orders (including customers with no orders).


SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderID
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders As o
ON c.customerID = o.customerID

--Find customers who never placed an order.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderID
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders As o
ON c.customerID = o.customerID
WHERE o.orderID is NULL

--Show customers and their order count (including zero orders).

SELECT 
	c.customerID,
	COUNT(o.orderID) AS their_order_count
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders AS o
ON c.customerID = o.customerID
GROUP BY c.customerID

--Find customers who placed orders but their score is missing.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderID
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders As o
ON c.customerID = o.customerID
WHERE  o.orderID IS NOT NULL AND c.Score IS NULL


SELECT * FROM Sales.Customers
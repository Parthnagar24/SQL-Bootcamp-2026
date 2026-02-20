--Show all orders and customer names (even if customer missing).


SELECT 
	*
FROM Sales.Customers AS c
RIGHT JOIN Sales.Orders AS o
ON c.customerID= o.customerID

SELECT 
	*
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON c.customerID= o.customerID



--Find orders that do not belong to any customer.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderID
FROM Sales.Customers AS c
RIGHT JOIN Sales.Orders As o
ON c.customerID = o.customerID
WHERE  c.customerID IS NULL



--Find orders where customer data is missing.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderID
FROM Sales.Customers AS c
RIGHT JOIN Sales.Orders As o
ON c.customerID = o.customerID
WHERE  o.orderID IS NOT NULL AND c.customerID IS NULL

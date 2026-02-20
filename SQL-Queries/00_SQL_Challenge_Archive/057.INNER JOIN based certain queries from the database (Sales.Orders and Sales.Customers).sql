--Show customer first name and order sales where a customer has placed an order.

SELECT * FROM Sales.Customers
SELECT * FROM Sales.Orders


SELECT 
	c.customerID,
	c.FirstName,
	o.orderID,
	o.Sales
FROM Sales.Customers As c
INNER JOIN Sales.Orders AS o
ON c.customerID = o.customerID

--Display order_id, order_date, customer country.

SELECT 
	c.CustomerID,
	o.orderDate,
	c.Country,
	o.orderID
FROM Sales.Customers As c
INNER JOIN Sales.Orders AS o
ON c.customerID = o.customerID

--Find total sales per country (only for customers who placed orders).

SELECT 
	c.Country,
	SUM(o.Sales) AS total_sales
FROM Sales.Customers As c
INNER JOIN Sales.Orders AS o
ON c.customerID = o.customerID
GROUP BY c.Country

--Show customers and their orders placed in 2021.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderDate,
	c.Country,
	o.orderID
FROM Sales.Customers As c
INNER JOIN Sales.Orders AS o
ON c.customerID = o.customerID
WHERE MONTH(o.orderDate) = '03'


--Find customers who placed orders but only from USA.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderDate,
	c.Country,
	o.orderID
FROM Sales.Customers As c
INNER JOIN Sales.Orders AS o
ON c.customerID = o.customerID
WHERE c.Country = 'USA'


--Find orders placed by customers having score greater than 500.

SELECT 
	c.FirstName,
	c.CustomerID,
	o.orderDate,
	c.Country,
	o.orderID,
	c.Score
FROM Sales.Customers As c
INNER JOIN Sales.Orders AS o
ON c.customerID = o.customerID
WHERE c.Score>500
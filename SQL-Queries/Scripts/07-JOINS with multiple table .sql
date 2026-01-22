/* Task: Using SalesDB, Retrieve a list of all orders, along with the related customer, product, 
   and employee details. For each order, display:
   - Order ID
   - Customer's name
   - Product name
   - Sales amount
   - Product price
   - Salesperson's name */


SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees
SELECT * FROM Sales.Orders
SELECT * FROM Sales.OrdersArchive
SELECT * FROM Sales.Products

SELECT 
c.FirstName,
c.LastName,
o.OrderID,
p.Product,
p.Price,
o.Sales,
e.FirstName,
e.LastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Employees AS e
ON e.EmployeeID = o.SalesPersonID
LEFT JOIN Sales.Products AS p
ON p.ProductID = o.ProductID

/* Task: Using SalesDB, Retrieve a list of all orders, along with the related customer, product, 
   and employee details. For each order, display:
   - Order ID
   - Customer's name
   - Product name
   - Sales amount
   - Product price
   - Salesperson's name */

   SELECT * FROM Sales.Customers
      SELECT * FROM Sales.Orders

         SELECT * FROM Sales.Products
            SELECT * FROM Sales.Employees



 SELECT
 c.FirstName,
 o.CustomerID,
 o.OrderID,
 p.Product,
 p.Price,
 e.FirstName,
 o.Sales
 FROM Sales.Orders AS o
 LEFT JOIN Sales.Customers AS c
 ON c.CustomerID= o.CustomerID
 LEFT JOIN Sales.Products AS p
 ON o.ProductID =p.ProductID
 LEFT JOIN Sales.Employees AS e
 ON o.SalesPersonID = e.EmployeeID

 SELECT 
    o.OrderID,
    o.Sales,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    p.Product AS ProductName,
    p.Price,
    e.FirstName AS EmployeeFirstName,
    e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
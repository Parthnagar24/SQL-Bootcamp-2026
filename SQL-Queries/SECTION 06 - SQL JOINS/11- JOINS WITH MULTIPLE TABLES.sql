/*
using salesdb retrieve list of all orders along with the related customer,product
and employee details
for customer display
1 order id
2 customer name
3 product name
4 sales amount
5 product price
6 salesperson name
*/

SELECT * FROM Sales.Orders
SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees
SELECT * FROM Sales.OrdersArchive
SELECT * FROM Sales.Products


SELECT
o.OrderID,
o.Sales,
c.FirstName AS CUSTOMER_FIRSTNAME,
c.lastName AS CUSTOMER_LASTNAME,
e.FirstName AS EMPLOYEE_FIRSTNAME,
e.LastName AS EMPLOYEE_LASTNAME,
p.Product AS ProductName,
p.price
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.OrderID = c.CustomerID
LEFT JOIN Sales.Employees  AS e
ON o.SalesPersonID = e.EmployeeID
LEFT JOIN Sales.Products   AS p
ON o.ProductID = p.ProductID
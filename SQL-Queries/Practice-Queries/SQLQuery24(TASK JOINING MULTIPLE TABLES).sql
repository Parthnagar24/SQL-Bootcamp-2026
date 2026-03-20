/* using a salesDB, retrieve a list of all orders,
alogn with the related customer product and employee details */

SELECT 
ord.OrderID,
ord.Sales,
customer.FirstName,
customer.LastName,
prod.Product AS prodname,
prod.price,
emp.FirstName AS Employeefname,
emp.LastName AS Employeelname
FROM Sales.Orders AS ord
LEFT JOIN Sales.Customers AS customer
ON ord.CustomerID = customer.customerID
LEFT JOIN Sales.Products AS prod
ON ord.PRODUCTID = prod.ProductID
LEFT JOIN Sales.Employees AS emp
ON  ord.SalesPersonID = emp.EmployeeID
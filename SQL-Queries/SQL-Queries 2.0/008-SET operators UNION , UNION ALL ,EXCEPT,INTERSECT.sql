--SET OPERATORS

/* TASK 1: 
   Combine the data from Employees and Customers into one table using UNION 
*/

SELECT 
	FirstName,
	LastName
FROM Sales.Customers

UNION

SELECT 
	FirstName,
	LastName
FROM Sales.Employees


/* TASK 2: 
   Combine the data from Employees and Customers into one table, including duplicates, using UNION ALL 
*/

SELECT 
	FirstName,
	LastName
FROM Sales.Customers

UNION ALL

SELECT 
	FirstName,
	LastName
FROM Sales.Employees

/* TASK 3: 
   Find employees who are NOT customers using EXCEPT 
*/

SELECT 
	FirstName,
	LastName
FROM Sales.Customers

EXCEPT

SELECT 
	FirstName,
	LastName
FROM Sales.Employees


/* TASK 4: 
   Find employees who are also customers using INTERSECT 
*/
SELECT
    FirstName,
    LastName
FROM Sales.Employees
INTERSECT
SELECT
    FirstName,
    LastName
FROM Sales.Customers;

/* TASK 5: 
   Combine order data from Orders and OrdersArchive into one report without duplicates 
*/
SELECT
    'Orders' AS SourceTable,
    OrderID,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.Orders
UNION
SELECT
    'OrdersArchive' AS SourceTable,
    OrderID,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.OrdersArchive
ORDER BY OrderID;
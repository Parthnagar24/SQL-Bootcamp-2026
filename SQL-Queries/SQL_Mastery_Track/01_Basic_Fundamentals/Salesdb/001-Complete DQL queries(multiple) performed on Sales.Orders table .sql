--retreive all data from sales.orders
SELECT * FROM Sales.Orders

--retrive specific columns from sales.orders
SELECT
	orderID,
	ProductID,
	customerID,
	Quantity,
	Sales
FROM Sales.Orders

--retrive specific columns from the table with score>=49
SELECT
	orderID,
	ProductID,
	customerID,
	Quantity,
	Sales
FROM Sales.Orders
WHERE Sales >=49


--retrive specific columns from the table with score>=49 and sort the sales from H_L
SELECT
	orderID,
	ProductID,
	customerID,
	Quantity,
	Sales
FROM Sales.Orders
WHERE Sales >=49
ORDER BY Sales DESC

--retrive total_Sales based on productID

SELECT
	ProductID,
	SUM(Sales) AS total_sales_per_product
	FROM Sales.Orders
GROUP BY ProductID

--retrive total_Sales based on productID having total sales > 120

SELECT
	ProductID,
	SUM(Sales) AS total_sales_per_product
	FROM Sales.Orders
GROUP BY ProductID
HAVING SUM(Sales)>120


---retrieve 3 lowest sales based customer details
SELECT TOP 3 *
FROM Sales.Orders
ORDER BY Sales
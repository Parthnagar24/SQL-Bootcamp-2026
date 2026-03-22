--SELECT SUBQUERY

/*
SELECT col,
(SELECT col FROM table1 WHERE condition)
FROM table1
*/

--show the products ids, product names, prices and total number of orders

SELECT 
ProductID,
Product,
Price,
(SELECT COUNT(OrderID)  FROM Sales.Orders) AS TOTAL_ORDERS
FROM Sales.Products
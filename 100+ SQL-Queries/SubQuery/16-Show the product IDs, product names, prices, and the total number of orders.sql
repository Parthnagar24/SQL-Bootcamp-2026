/* TASK 3:
   Show the product IDs, product names, prices, and the total number of orders.
*/

SELECT
ProductID,
Product,
Price,
	--subquery
	(SELECT COUNT(*)  FROM Sales.Orders) AS TotalOrders
FROM Sales.Products
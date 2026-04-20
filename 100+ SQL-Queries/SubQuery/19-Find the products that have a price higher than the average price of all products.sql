/* TASK 6:
   Find the products that have a price higher than the average price of all products.
*/

SELECT 
ProductID,
Product,
Price,
	(SELECT AVG(Price)  FROM Sales.Products) AS avg_price
FROM Sales.Products
WHERE Price > (SELECT AVG(Price)  FROM Sales.Products)
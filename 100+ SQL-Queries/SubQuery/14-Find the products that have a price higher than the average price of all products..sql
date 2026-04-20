/* TASK 1:
   Find the products that have a price higher than the average price of all products.
*/

--main query
SELECT 
*
FROM 
--subquery
	(SELECT
		ProductID,
		Price,
		AVG(Price) OVER() AS Avg_all_product
	FROM Sales.Products)t
WHERE price> Avg_all_product
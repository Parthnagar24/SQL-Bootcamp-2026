/* TASK 3: 
   Find the total sales across all orders,
   additionally providing details such as OrderID and OrderDate 
*/

SELECT
	OrderID,
	OrderDate,
	SUM(Sales) OVER() AS total_sales
FROM Sales.Orders
/* TASK 5: 
   Find the total sales across all orders, for each product,
   and for each combination of product and order status,
   additionally providing details such as OrderID and OrderDate 
*/

SELECT
	OrderID,
	ProductId,
	OrderStatus,
	Sales,
	SUM(Sales) OVER() AS total_sales_across_all,
	SUM(Sales) OVER(PARTITION BY ProductID) AS total_sales_for_Each_prod,
	SUM(sales) OVER(PARTITION BY ProductID,OrderStatus) AS x
FROM Sales.Orders
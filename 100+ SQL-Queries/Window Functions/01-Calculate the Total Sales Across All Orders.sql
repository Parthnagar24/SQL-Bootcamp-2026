
/* TASK 1: 
   Calculate the Total Sales Across All Orders 
*/

SELECT 
	OrderID,
	SUM(Sales) OVER() AS Total_sales
FROM Sales.Orders
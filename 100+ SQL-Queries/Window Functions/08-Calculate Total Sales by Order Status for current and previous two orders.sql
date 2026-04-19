/* TASK 8: 
   Calculate Total Sales by Order Status for current and previous two orders 
*/



SELECT 
OrderID,
ProductID,
OrderStatus,
Sales,
SUM(Sales) OVER (ORDER BY OrderStatus ASC ROWS BETWEEN  2 PRECEDING AND CURRENT ROW)
FROM Sales.Orders
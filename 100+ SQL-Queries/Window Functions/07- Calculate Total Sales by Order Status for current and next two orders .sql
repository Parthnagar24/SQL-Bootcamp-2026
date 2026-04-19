/* TASK 7: 
   Calculate Total Sales by Order Status for current and next two orders 
*/


SELECT 
OrderID,
ProductID,
OrderStatus,
Sales,
SUM(Sales) OVER (ORDER BY OrderStatus ASC ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING)
FROM Sales.Orders
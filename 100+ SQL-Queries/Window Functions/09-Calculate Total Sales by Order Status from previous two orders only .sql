/* TASK 9: 
   Calculate Total Sales by Order Status from previous two orders only 
*/

SELECT
OrderStatus,
ProductID,
OrderDate,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate ROWS  2 PRECEDING)
FROM Sales.Orders
/* TASK 4:
   - Find the Total Sales Across All Orders 
   - Find the Total Sales for Each Product
*/



SELECT 
SUM(Sales) OVER(),
SUM(Sales) OVER(PARTITION BY ProductID)
FROM Sales.Orders
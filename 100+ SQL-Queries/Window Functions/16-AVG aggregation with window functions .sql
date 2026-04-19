/* TASK 6:
   - Find the Average Sales Across All Orders 
   - Find the Average Sales for Each Product
*/


SELECT
AVG(Sales) OVER(),
AVG(Sales) OVER(PARTITION BY ProductID)
FROM Sales.Orders
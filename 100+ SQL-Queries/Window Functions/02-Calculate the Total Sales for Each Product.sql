/* TASK 2: 
   Calculate the Total Sales for Each Product 
*/

SELECT 
	Product,
	ProductID,
	SUM(Price) OVER(PARTITION BY Product) AS Total_sales
FROM Sales.Products

SELECT 
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_sales
FROM Sales.Orders
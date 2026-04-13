/* TASK 1: 
   Find the average scores of the customers
   Uses COALESCE to replace NULL Score with 0.
*/

SELECT * FROM Sales.Customers

SELECT 
	CustomerID,
	AVG(Score) AS avg_Score
FROM Sales.Customers
GROUP BY CustomerID

SELECT 
	CustomerID,
	AVG(COALESCE(Score,0)) AS avg_Score
FROM Sales.Customers
GROUP BY CustomerID
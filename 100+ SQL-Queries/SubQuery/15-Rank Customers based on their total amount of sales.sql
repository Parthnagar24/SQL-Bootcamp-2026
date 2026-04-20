/* TASK 2:
   Rank Customers based on their total amount of sales.
*/

SELECT
*,
RANK() OVER(ORDER BY Total_Amount DESC) AS Ranking
FROM
--subquery
	(SELECT
	CustomerID,
	SUM(Sales) AS Total_Amount
	FROM Sales.Orders
	GROUP BY CustomerID)t
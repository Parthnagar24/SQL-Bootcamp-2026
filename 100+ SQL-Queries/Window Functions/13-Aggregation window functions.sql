/* TASK 2:
   - Find the Total Number of Customers
   - Find the Total Number of Scores for Customers
   - Find the Total Number of Countries
*/

SELECT
CustomerID,
Country,
Score,
COUNT(*) OVER() AS total_no_of_customers,
SUM(COALESCE(Score,0)) OVER(PARTITION BY CustomerID) AS score_id,
COUNT(Country) OVER() As no_of_country
FROM Sales.Customers
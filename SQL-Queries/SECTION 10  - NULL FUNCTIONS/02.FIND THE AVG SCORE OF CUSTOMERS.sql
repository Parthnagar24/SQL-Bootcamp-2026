-- FIND THE AVG SCORE OF CUSTOMERS

SELECT
CustomerID,
Score,
COALESCE(Score,0),
AVG(Score) OVER()  AS AvgScore,
AVG(COALESCE(Score,0)) OVER() AvgScoress
FROM Sales.Customers
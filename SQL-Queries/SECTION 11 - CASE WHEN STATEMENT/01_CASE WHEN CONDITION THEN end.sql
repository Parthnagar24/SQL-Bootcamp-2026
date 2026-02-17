/*
CASE -- start of logic

WHEN C THEN R-- condition to be evakuated
WHEN C THEN R

ELSE R
END -- end of logic

*/

--GENERATE A REPORT SHOWING TOTAL SALES FOR EACH CATEGORY
--HIGH : IF SALES >50
--MEDIUM : IF SALES BETWEEN 20 AND 50
--LOW : IF THE SALES QUAL OR LOW THAN 20
-- SORT RESULT L TO H

SELECT
Category,
SUM(Sales) AS TotalSales
FROM(
	SELECT
	OrderID,
	Sales,
	CASE
		WHEN Sales >50 THEN 'High'
		WHEN Sales BETWEEN 20 AND 50 THEN 'Medium'
		ELSE 'Low'
	END AS Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales ASC
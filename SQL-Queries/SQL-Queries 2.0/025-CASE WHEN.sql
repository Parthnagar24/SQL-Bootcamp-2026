-- ?? LEVEL 4: CASE WHEN (26–32)
-- =========================================

-- 26. Categorize customers based on sales:
-- >=80 High, 50–79 Medium, <50 Low

SELECT
Sales,
CASE
WHEN sales >=80 THEN 'HIGH'
WHEN sales BETWEEN 50 AND 79 THEN 'MEDIUM'
WHEN sales <50 THEN 'LOW'
ELSE 'N/A'
END
FROM Sales.Orders


-- 27. Add category 'No Score' if score is NULL

SELECT
Score,
CASE
WHEN Score IS NULL THEN 'NO SCORE'
ELSE 'N/A'
END
FROM Sales.Customers

-- 28. Show 'Pass' if score >= 50 else 'Fail'

SELECT
COALESCE(Score,0),
CASE
WHEN COALESCE(Score,0) >=50 THEN 'Pass'
ELSE 'Fail'
END
FROM Sales.Customers

-- 29. Create a column showing 'Even' or 'Odd' CustomerID
SELECT
CustomerID,
CASE
WHEN CustomerID %2 = 0 THEN 'Even'
ELSE 'Odd'
END
FROM Sales.Customers

-- 30. Give 10 bonus points if score < 50

SELECT
COALESCE(Score,0),
CASE
WHEN COALESCE(Score,0) <50 THEN COALESCE(Score,0)+10
ELSE ''
END
FROM Sales.Customers

-- 31. Label customers as 'Top' if score > average score

SELECT
COALESCE(Score,0),
AVG(COALESCE(Score,0)) OVER(),
CASE
WHEN Score > AVG(COALESCE(Score,0)) OVER() THEN 'TOP'
ELSE ''
END
FROM Sales.Customers

-- 32. Categorize orders based on sales:
-- >100 High, 50–99 Medium, <50 Low

SELECT
Sales,
CASE
WHEN sales >=100 THEN 'HIGH'
WHEN sales BETWEEN 50 AND 99 THEN 'MEDIUM'
WHEN sales <50 THEN 'LOW'
ELSE 'N/A'
END
FROM Sales.Orders

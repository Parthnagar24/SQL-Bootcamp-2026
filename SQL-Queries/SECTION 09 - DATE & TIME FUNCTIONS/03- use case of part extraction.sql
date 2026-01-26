--USE CASES OF PART EXTRACTIONS


-- how many orders were placed each year

SELECT 
YEAR(OrderDate),
COUNT(*) AS NROFORDERS
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

-- how many orders were placed each month

SELECT 
DATENAME(MONTH,OrderDate),
COUNT(*) AS NROFORDERS
FROM Sales.Orders
GROUP BY DATENAME(MONTH,OrderDate)

--Show all orders placed during month of february

SELECT *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2
-- FORMAT() : FORMATS A DATE AND TIME VALUE

SELECT
OrderID,
OrderDate,
CreationTime,
FORMAT(CreationTime,'MM-dd-yyyy') AS USA,
FORMAT(CreationTime,'dd-MM-yyyy') AS Europe,
FORMAT(CreationTime,'dd') AS dd ,    -- used to get day
FORMAT(CreationTime,'ddd') AS ddd ,  -- used to get day name(3)
FORMAT(CreationTime,'dddd') AS dddd,   -- used to get day name(full)
FORMAT(CreationTime,'MM') AS MM,
FORMAT(CreationTime,'MMM') AS MMM,
FORMAT(CreationTime,'MMMM') AS MMMM
FROM Sales.Orders



--show creation time using following format
--Day Wed Jan Q1 2025 12:34:56 PM

SELECT
OrderID,
OrderDate,
CreationTime,
'Day ' + FORMAT(CreationTime,'ddd MMM') +
' Q' + DATENAME(quarter, CreationTime) + ' ' +
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CUSTOMFORMAT
FROM Sales.Orders



-- USE AGGRAGATION
SELECT
FORMAT(OrderDate,'MMM YY') AS OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate,'MMM YY')


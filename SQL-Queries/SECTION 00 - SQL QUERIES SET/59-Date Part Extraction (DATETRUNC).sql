--6.DATETRUNC() : TRUNCATES THE DATE AT SPECIFIC PART

SELECT
CreationTime,
DATETRUNC(hour,CreationTime ) AS TRUNC_hour,
DATETRUNC(minute,CreationTime ) AS TRUNC_minute,
DATETRUNC(second,CreationTime ) AS TRUNC_sec,
DATETRUNC(day,CreationTime ) AS TRUNC_day,
DATETRUNC(month,CreationTime ) AS TRUNC_month,
DATETRUNC(year,CreationTime ) AS TRUNC_year
FROM Sales.Orders

SELECT
CreationTime,
COUNT(*)
FROM Sales.Orders
GROUP BY CreationTime
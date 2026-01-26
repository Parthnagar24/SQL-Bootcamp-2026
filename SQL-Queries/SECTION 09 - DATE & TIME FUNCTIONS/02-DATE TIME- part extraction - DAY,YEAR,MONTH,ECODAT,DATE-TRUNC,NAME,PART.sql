--PART EXTRACTION

--1.DAY () : RETURNS A DAY FROM DATE
--2. MONTH() : RETURNS A MONTH FROM A DATE
--3. YEAR() : RETURNS THE YEAR FROM A DATE


SELECT
'2025-08-20' AS date_value,
DAY('2025-08-20') AS day_value,
MONTH('2025-08-20') AS month_value,
YEAR('2025-08-20') AS year_value

--4. DATEPART() : RETURNS A SPECIFIC PART OF A DATE


SELECT
'2025-08-20' AS date_value,
DATEPART(month,'2025-08-20' ) AS extract_month ,-- month = mm
DATEPART(year,'2025-08-20' ) AS extract_year,
DATEPART(day,'2025-08-20' ) AS extract_day,
DATEPART(week,'2025-08-20' ) AS extract_week,
DATEPART(quarter,'2025-08-20' ) AS extract_quarter

SELECT
CreationTime,
DATEPART(hour,CreationTime ) AS extract_hour,
DATEPART(minute,CreationTime  ) AS extract_minute,
DATEPART(second,CreationTime  ) AS extract_second
FROM Sales.Orders

--5.DATENAME() : RETURNS NAME OF DATE PARTS


SELECT
'2025-08-20' AS date_value,
DATENAME(month,'2025-08-20' ) AS month_name,
--DATENAME(day,'2025-08-20' ) AS month_day,                           X
--DATENAME(year,'2025-08-20' ) AS month_year,                         X
DATENAME(weekday,'2025-08-20' ) AS week_day

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

--7. EOMONTH() : RETURNS LAST DAY OF MONTH

SELECT
'2025-08-20' AS date_value1,
'2025-02-20' AS date_value1,
'2025-11-20' AS date_value1,
EOMONTH('2025-08-20'),
EOMONTH('2025-02-20'),
EOMONTH('2025-11-20')
--5.DATENAME() : RETURNS NAME OF DATE PARTS


SELECT
'2025-08-20' AS date_value,
DATENAME(month,'2025-08-20' ) AS month_name,
--DATENAME(day,'2025-08-20' ) AS month_day,                           X
--DATENAME(year,'2025-08-20' ) AS month_year,                         X
DATENAME(weekday,'2025-08-20' ) AS week_day

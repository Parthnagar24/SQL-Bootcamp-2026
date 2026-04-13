/* TASK 2:
   Extract various parts of CreationTime using DATETRUNC, DATENAME, DATEPART,YEAR, MONTH, and DAY.
*/

SELECT

DATETRUNC(year,CreationTime),
DATETRUNC(month,CreationTime),
DATETRUNC(hour,CreationTime),

DATENAME(month,CreationTime),
DATENAME(weekday,CreationTime),


DATEPART(year,CreationTime),
DATEPART(quarter,CreationTime),

YEAR(CreationTime),
DAY(CreationTime),
MONTH(CreationTime)

FROM Sales.Orders
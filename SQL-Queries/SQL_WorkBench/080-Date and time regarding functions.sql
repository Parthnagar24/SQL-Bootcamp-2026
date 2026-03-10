-- Current Date & Time

SELECT GETDATE();

-- static query

SELECT GETDATE() AS current_datetime;


-- Current TimeStamp

SELECT CURRENT_TIMESTAMP;


--Extract Year
SELECT  YEAR(order_date) FROM orders

--Extract MONTH

SELECT MONTH('2024-05-15') AS month_value;

--Extract DAY

SELECT DAY('2024-05-15') AS day_value;

--DATEADD - adds time to a date

--DATEADD(unit, value, date)

SELECT DATEADD(day, 5, '2024-05-10');
SELECT DATEADD(month, 5, '2024-05-10');

--DATEDIFF - finds difference between 2 dates

----DATEDIFF(unit, start_date, end_date)

SELECT DATEDIFF(day, '2024-05-01', '2024-05-10');

----FORMAT DATE

SELECT FORMAT(GETDATE(), 'yyyy-MM-dd');

--DATE PART
SELECT DATEPART(month, '2024-08-21');

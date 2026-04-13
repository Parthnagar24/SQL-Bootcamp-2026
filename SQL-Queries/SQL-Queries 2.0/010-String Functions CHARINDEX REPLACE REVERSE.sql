--SQL FUNCTIONS 
--ROW LEVEL CALCULATIONS
--SINGLE LEVEL CALCULATIONS

--1.STRING FUNCTION

--REPLACE(column, 'old_value', 'new_value')

-- Remove dashes (-) from a phone number
SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '/') AS clean_phone

-- Replace File Extence from txt to csv
SELECT
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename


--CHARINDEX
SELECT 
FirstName,
CHARINDEX('a', FirstName) As finds_position
FROM Sales.Customers

--REVERSE

SELECT
FirstName,
REVERSE(FirstName)
FROM Sales.Customers
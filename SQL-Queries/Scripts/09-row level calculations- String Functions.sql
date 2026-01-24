-- row level functions
-- string functions

-- Concatenate first name and country into one column

SELECT 
first_name,
country,
CONCAT(first_name,country) AS country_name,
CONCAT(first_name,'',country) AS country_name2,
CONCAT(first_name,' ',country) AS country_name3,
CONCAT(first_name,'-',country) AS country_name4
FROM customers

-- Convert the first name to lowercase
-- Convert the first name to uppercase

SELECT 
LOWER(first_name),
UPPER(first_name)
FROM customers

-- Find customers whose first name contains leading or trailing spaces

SELECT 
first_name,
LEN(first_name),
TRIM(first_name) AS lead_trail_space_cut,
LEN(TRIM(first_name)) AS Length_lead_trail_space_cut
FROM customers

-- Remove dashes (-) from a phone number

SELECT
'123-456-44-75' AS phone,
REPLACE('123-456-44-75','-','')

-- Replace File Extence from txt to cs
SELECT
'report.txt' AS text_file,
REPLACE('report.txt','.txt','.csv')

-- Retrieve the first two characters of each first name
-- Retrieve the last two characters of each first name
SELECT
first_name,
TRIM(first_name),
LEFT(first_name,2),   --LEFT(TRIM(first_name),2)
RIGHT(first_name,2)
FROM customers

-- Retrieve a list of customers' first names after removing the first character
SELECT 
    first_name,
    SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS trimmed_name
FROM customers	

-- Nesting
SELECT
first_name, 
UPPER(LOWER(first_name)) AS nesting
FROM customers
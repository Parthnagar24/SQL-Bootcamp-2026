-- STRING FUNCTIONS ( SINGLE ROW CALCULATIONS)

-- 1.MANIPULATION 

--A. CONCAT : combines multiple strings into 1

-- concatenate first name and country into one column
SELECT 
	first_name,
	country,
	CONCAT(first_name,' ',country) AS name_country
FROM customers

--B. UPPER : converts all characters to uppercase
--C LOWER : converts all characters to lowercase

SELECT 
	first_name,
	LOWER(first_name) AS low_name,
	UPPER(first_name) AS upp_name
FROM customers

--D. TRIM : removes leading and trailing space( rid of empty spaces)
-- LEN : counts number of characters
-- find customers whose first name contains leading or trailing spaces

SELECT 
	first_name,
	LEN(first_name) AS lengthh_name,
	LEN(TRIM(first_name)) leng_trimm_name,
	LEN(first_name) - LEN(TRIM(first_name)) AS flag
FROM customers
--WHERE LEN(first_name) != LEN(TRIM(first_name))
--WHERE first_name ! = TRIM(first_name)

--E. REPLACE : replaces specific character with a new character   ( USED TO REMOVE SOMETHING AS WELL)

-- remove (-) from a phone number
SELECT 
'123-456-789-90' AS phone,
REPLACE('123-456-789-90','-','') AS clean_phone

-- replace file esxtence from txt to csv

SELECT
'report.txt' AS old_file_name,
REPLACE('report.txt','.txt','.csv') AS new_file_name

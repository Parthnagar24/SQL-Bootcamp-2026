--SUBSTRING : extracts a part of string at a specified position

--retrieve a list of customers first name removing  the first character

SELECT
first_name,
SUBSTRING(TRIM(first_name),2,Len(first_name))
FROM customers
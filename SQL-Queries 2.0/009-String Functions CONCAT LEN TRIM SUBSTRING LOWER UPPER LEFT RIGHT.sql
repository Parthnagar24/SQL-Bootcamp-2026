--SQL FUNCTIONS 
--ROW LEVEL CALCULATIONS
--SINGLE LEVEL CALCULATIONS

--1.STRING FUNCTION

SELECT 
CONCAT(FirstName,LastName) AS combines_both_names_without_Space,
CONCAT(FirstName,'',LastName) AS similar_like_above,
CONCAT(FirstName,' ',LastName) AS combines_with_Space_in_between,
CONCAT(FirstName,'-',LastName) AS combines_with_slash_in_btw
FROM Sales.Customers

SELECT
FirstName,
TRIM(FirstName) AS name_without_space,
LEN(FirstName) AS length_of_characters,
LEN(TRIM(FirstName)) AS length_of_characters_without_extra_spaces
FROM Sales.Customers

/*
SELECT
first_name,
TRIM(first_name) AS name_without_space,
LEN(first_name) AS length_of_characters,
LEN(TRIM(first_name)) AS length_of_characters_without_extra_spaces
FROM customers    */    

SELECT
UPPER(FirstName),   --transforms to all caps
LOWER(FirstName),    --transforms to all lower case
LEFT(FirstName,3),   --retrieve specific characters from a word based on the value provided from start
RIGHT(FirstName,2)--retrieve specific characters from a word based on the value provided from end
FROM Sales.Customers

SELECT
FirstName,
SUBSTRING(FirstName,2),    -- starts from 2nd character and retrieves till end of character
SUBSTRING(FirstName,2,2)  -- similar like earlier but a fixed length provided of characters in total after start
FROM Sales.Customers



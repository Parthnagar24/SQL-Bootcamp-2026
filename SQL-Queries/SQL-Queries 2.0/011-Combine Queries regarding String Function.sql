-- Show customer name in format:
-- "LASTNAME, firstname"
-- Conditions:
-- - Remove extra spaces
-- - First name ? lowercase
-- - Last name ? uppercase

SELECT
	FirstName,
	LastName,
	UPPER(TRIM(LastName)),
	LOWER(TRIM(FirstName)),
	CONCAT('"',UPPER(TRIM(LastName)),', ',LOWER(TRIM(FirstName)),'"')
FROM Sales.Customers


-- Show:
-- name,
-- total characters excluding spaces

SELECT
FirstName,
LastName,
TRIM(FirstName),
TRIM(LastName),
CONCAT(TRIM(FirstName),'',TRIM(LastName)),
LEN(CONCAT(TRIM(FirstName),'',TRIM(LastName)))
FROM Sales.Customers

-- Extract everything AFTER first 'a' in name

SELECT 
FirstName,
CHARINDEX('a',FirstName),
SUBSTRING(CHARINDEX(('a',FirstName))
FROM Sales.Customers

-- Extract last 3 characters of name using REVERSE

SELECT
REVERSE(FirstName) as A,
SUBSTRING(REVERSE(FirstName),LEN(REVERSE(FirstName))-2,LEN(REVERSE(FirstName)))
FROM Sales.Customers

-- Replace all vowels (a, e, i, o, u) with '*'
SELECT
FirstName,
REPLACE(FirstName,'a','*') AS A,
REPLACE(FirstName,'e','*') AS E,
REPLACE(FirstName,'i','*') AS I,
REPLACE(FirstName,'o','*') AS O,
REPLACE(FirstName,'u','*') AS U
FROM Sales.Customers
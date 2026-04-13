-- =========================================
-- ?? LEVEL 2: STRING FUNCTIONS (11–18)
-- =========================================

-- 11. Show full name by combining FirstName and LastName

SELECT
CONCAT(FirstName,' ',LastName) AS FullName
FROM Sales.Customers

-- 12. Convert FirstName to uppercase and LastName to lowercase
SELECT
UPPER(FirstName),
LOWER(LastName)
FROM Sales.Customers

-- 13. Remove leading and trailing spaces from FirstName
SELECT
TRIM(FirstName)
FROM Sales.Customers

-- 14. Count number of characters in FirstName
SELECT
LEN(FirstName)
FROM Sales.Customers

-- 15. Replace all 'a' in FirstName with '*'
SELECT
REPLACE(FirstName,'a','*')
FROM Sales.Customers

-- 16. Extract first 3 characters of FirstName
SELECT
LEFT(FirstName,3)
FROM Sales.Customers

-- 17. Extract last 3 characters using REVERSE
SELECT
RIGHT(FirstName,3),
REVERSE(RIGHT(FirstName,3))
FROM Sales.Customers

-- 18. Find position of 'a' in FirstName

SELECT
CHARINDEX('a',FirstName)
FROM Sales.Customers     
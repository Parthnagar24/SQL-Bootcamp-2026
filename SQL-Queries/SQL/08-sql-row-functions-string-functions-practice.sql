--Single Row Functions

--String Functions


SELECT 
CONCAT(FirstName,LastName), -- no space
CONCAT(FirstName,'',LastName), -- no space
CONCAT(FirstName,' ',LastName), -- with space,
CONCAT(FirstName,'-',LastName) 
FROM Sales.Customers


SELECT 
UPPER(FirstName),  --converts string to upper case
LOWER(lastName)     -- converts string to lower case
FROM Sales.Customers

SELECT
TRIM(FirstName),--removes blank spaces
LEN(FirstName), --to calulate length of string
LEN(TRIM(FirstName))
FROM Sales.Customers

SELECT
'948-25589529-85' AS phone,
REPLACE('948-25589529-85','-','/') 

SELECT
LEFT(FirstName,2),  --returns no. of chars from start
RIGHT(LastName,2),   --returns no.of chars from end
SUBSTRING(FirstName,3)  -- start and length 
FROM Sales.Customers


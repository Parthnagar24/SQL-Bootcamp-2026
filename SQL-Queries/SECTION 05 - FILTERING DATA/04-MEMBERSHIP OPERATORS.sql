--MEMBERSHIP OPERATORS

-- IN : CHECKS IF A VALUE IS IN LIST
-- NOT IN :


--retrieve all customers either from usa or germany

SELECT *
FROM customers
WHERE  country='Germany' OR country = 'USA'   (comparison oper)

SELECT *
FROM customers
WHERE country IN ('Germany','USA')

--retrieve all customers not from usa or germany

SELECT *
FROM customers
WHERE country NOT IN ('Germany','USA')
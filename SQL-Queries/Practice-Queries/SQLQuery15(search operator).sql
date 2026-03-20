-- SEARCH OPERATOR
--LIKE

--find all customers whose 1st name starts with M

SELECT *
FROM customers
WHERE first_name LIKE 'M%'

--find all customers whose name ends with n

SELECT *
FROM customers
WHERE first_name LIKE '%n'

--find all customers whose name contains r 

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

--find all customers whose name contains r in 3rd loc

SELECT *
FROM customers
WHERE first_name LIKE '__r%'

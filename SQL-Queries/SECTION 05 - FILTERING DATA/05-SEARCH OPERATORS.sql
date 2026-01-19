-- SEARCH OPERATOR

-- LIKE : search for a pattern in a text

-- find all customers whose first name starts with 'M'

SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- find all customers whose first name ENDS with 'n'

SELECT *
FROM customers
WHERE first_name LIKE '%n'

-- find all customers whose first name contains 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

-- find all customers whose first name contains 'r' at 3rd place


SELECT *
FROM customers
WHERE first_name LIKE '__r%'

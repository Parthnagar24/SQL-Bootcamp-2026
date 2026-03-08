--Customers with 5 letter names

SELECT * FROM customers
WHERE first_name LIKE '_____'

SELECT * FROM customers
WHERE TRIM(first_name) LIKE '_____'
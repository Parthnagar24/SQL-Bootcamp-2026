-- Find all customers whose first name has 'r' in the third position.

SELECT * FROM customers
WHERE first_name LIKE '__r%'

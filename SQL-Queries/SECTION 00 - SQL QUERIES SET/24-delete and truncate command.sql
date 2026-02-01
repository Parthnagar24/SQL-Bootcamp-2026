-- Select customers with an ID greater than 5 before deleting
SELECT *
FROM customers
WHERE id > 5

-- Delete all customers with an ID greater than 5
DELETE FROM customers
WHERE id > 5

-- Delete all data from the persons table
DELETE FROM persons

-- Faster method to delete all rows, especially useful for large tables
TRUNCATE TABLE persons

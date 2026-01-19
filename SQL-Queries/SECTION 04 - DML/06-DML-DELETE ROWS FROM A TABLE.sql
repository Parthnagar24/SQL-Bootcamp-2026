-- DELETE 

-- delete all customers with id >5

SELECT *
FROM customers
WHERE id>5

DELETE FROM customers
WHERE id >5

-- use of where is must with delete syntax else unintentionally we may delete all rows
-- if where is not used in the query
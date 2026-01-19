-- UPDATE 

-- change the score of customer 6 to 0

SELECT *
FROM customers

UPDATE customers
SET score = 0
WHERE id=6


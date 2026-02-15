--034.Find customers whose country NOT IN ('USA','Germany').

SELECT *
FROM customers
WHERE country NOT IN ('USA','Germany')
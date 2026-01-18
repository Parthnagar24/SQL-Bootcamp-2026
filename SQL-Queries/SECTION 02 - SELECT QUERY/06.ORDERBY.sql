--06.Retrieve all customers and sort result by highest score first

SELECT *
FROM customers
ORDER BY score DESC          -- HIGHEST TO LOWEST


SELECT *
FROM customers
ORDER BY score ASC           -- LOWEST TO HIGHEST

SELECT *
FROM customers
ORDER BY score             --- BY DEFAULT (LOWEST TO HIGHEST)

-- Retrieve all customers and sort the result by the country and then by the highest score

SELECT *
FROM customers
ORDER BY 
	country ASC,
	score DESC 
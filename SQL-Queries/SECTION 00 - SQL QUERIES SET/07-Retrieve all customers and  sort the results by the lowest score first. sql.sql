/* Retrieve all customers and  sort the results by the lowest score first. */

SELECT *
FROM customers
ORDER BY score      --(BY DEFAULT ORDER BY SORTS DATA IN L - H)

--ALTERNATIVE APPROACH
SELECT *
FROM customers
ORDER BY score ASC
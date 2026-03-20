/* Retrieve all customers and
 sort the results by the highest score first*/

 SELECT *
 FROM customers
 ORDER BY score DESC

 -- Lowest score 
 SELECT *
 FROM customers
 ORDER BY score 

 /* Retrieve all customers and sort the results by the country and 
 then by the highest score */

 SELECT *
 FROM customers
 ORDER BY 
 country ASC,
 score DESC
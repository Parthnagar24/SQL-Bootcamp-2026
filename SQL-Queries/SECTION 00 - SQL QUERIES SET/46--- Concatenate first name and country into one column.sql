-- Concatenate first name and country into one column


SELECT
CONCAT(first_name,country),
CONCAT(first_name,'',country),
CONCAT(first_name,'/',country),
CONCAT(first_name,' ',country)
FROM customers
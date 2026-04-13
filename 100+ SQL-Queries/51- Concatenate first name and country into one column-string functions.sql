-- Concatenate first name and country into one column


SELECT 
	CONCAT(first_name,'',country),  --concate with no space
	CONCAT(first_name,' ',country), -- concate with space
	CONCAT(first_name,'-',country),
	CONCAT(first_name,'+',country)
FROM customers
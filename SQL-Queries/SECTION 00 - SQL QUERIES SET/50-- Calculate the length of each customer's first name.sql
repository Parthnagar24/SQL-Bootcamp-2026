-- Calculate the length of each customer's first name
SELECT 
    first_name, 
    LEN(first_name) AS name_length
FROM customers
	
-- Convert the first name to lowercase
SELECT 
    LOWER(first_name) AS lower_case_name
FROM customers

-- Convert the first name to uppercase
SELECT 
    UPPER(first_name) AS upper_case_name
FROM customers
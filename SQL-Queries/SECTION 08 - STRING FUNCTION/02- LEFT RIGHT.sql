-- STRING FUNCTIONS ( SINGLE ROW CALCULATIONS)

--LEFT : extract specific number of characters from the start
--RIGHT: extract specific number of characters from the end

-- retrieve the 1st 2 characcters of each first name

SELECT
first_name,
LEFT(first_name,2) AS first_2_char,
LEFT(TRIM(first_name),2) AS trim_first_2_char,
RIGHT(first_name,2) AS last_2_char
FROM customers
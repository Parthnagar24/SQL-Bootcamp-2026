/* #1 Method: Manual INSERT using VALUES */
-- Insert new records into the customers table
INSERT INTO customers (id, first_name, country, score)
VALUES 
    (6, 'Anna', 'USA', NULL),
    (7, 'Sam', NULL, 100)

-- Incorrect column order 
INSERT INTO customers (id, first_name, country, score)
VALUES 
    (8, 'Max', 'USA', NULL)
    
-- Incorrect data type in values
INSERT INTO customers (id, first_name, country, score)
VALUES 
	('Max', 9, 'Max', NULL)

-- Insert a new record with full column values
INSERT INTO customers (id, first_name, country, score)
VALUES (8, 'Max', 'USA', 368)

-- Insert a new record without specifying column names (not recommended)
INSERT INTO customers 
VALUES 
    (9, 'Andreas', 'Germany', NULL)
    
-- Insert a record with only id and first_name (other columns will be NULL or default values)
INSERT INTO customers (id, first_name)
VALUES 
    (10, 'Sahra')

/* #2 Method: INSERT DATA USING SELECT - Moving Data From One Table to Another */
-- Copy data from the 'customers' table into 'persons'
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
    id,
    first_name,
    NULL,
    'Unknown'
FROM customers
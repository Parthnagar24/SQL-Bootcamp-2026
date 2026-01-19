-- DATA MANIPULATION LANGUAGE DML

-- 1. INSERT (manual entry procedure)

INSERT INTO customers(id,first_name,country, score)
VALUES 
(6,'Rose','India',NULL),
(7,'Sam',NULL, 100)

SELECT * FROM customers


-- skip only nullable columns
INSERT INTO customers(id,first_name)
VALUES 
(16,'Rose Mary')

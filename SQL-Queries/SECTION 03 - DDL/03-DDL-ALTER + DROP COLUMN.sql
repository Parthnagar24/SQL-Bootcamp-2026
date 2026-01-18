--remove column phone from person table

ALTER TABLE person
DROP COLUMN phone

SELECT * FROM person
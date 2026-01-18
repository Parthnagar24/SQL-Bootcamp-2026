-- add a new column called email in the table

ALTER TABLE person 
ADD email VARCHAR(20) NOT NULL

SELECT * 
FROM person
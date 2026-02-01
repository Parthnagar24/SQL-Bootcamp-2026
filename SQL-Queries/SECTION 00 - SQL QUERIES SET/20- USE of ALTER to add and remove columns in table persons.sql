-- Add a new column called email to the persons table

ALTER TABLE persons ADD email VARCHAR(20) NOT NULL


--Remove the column phone from the persons table

ALTER TABLE persons DROP COLUMN phone
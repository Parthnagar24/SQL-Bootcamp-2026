/* Create a new table called persons 
   with columns: id, person_name, birth_date, and phone */
CREATE TABLE persons(
id INT NOT NULL,
person_name VARCHAR(20) NOT NULL,
birth_Date DATE,
phone VARCHAR(12),
CONSTRAINT pk_persons PRIMARY KEY (id)
)

   -- Add a new column called email to the persons table
   ALTER TABLE persons ADD email VARCHAR(10) NOT NULL

   -- Remove the column phone from the persons table
   ALTER TABLE persons DROP COLUMN phone
   
-- Delete the table persons from the database
DROP TABLE persons


-- Change the score of customer with ID 6 to
UPDATE customers
SET id = 6 
WHERE id =0
-- Change the score of customer with ID 10 to 0 and update the country to 'UK'
UPDATE customers
SET id = 0 , country ='UK'
WHERE id =10
-- Update all customers with a NULL score by setting their score to 0
UPDATE customers
SET id = 0 
WHERE id =NULL
-- Select customers with an ID greater than 5 before deleting
SELECT 
 id
FROM customers
WHERE id>5
-- Delete all customers with an ID greater than 5
DELETE FROM  customers
WHERE id>5
-- Delete all data from the persons table
-- Faster method to delete all rows, especially useful for large tables

TRUNCATE TABLE persons
TRUNCATE TABLE account_holder
TRUNCATE TABLE bank_account
TRUNCATE TABLE order_TABLE

SELECT * FROM customers



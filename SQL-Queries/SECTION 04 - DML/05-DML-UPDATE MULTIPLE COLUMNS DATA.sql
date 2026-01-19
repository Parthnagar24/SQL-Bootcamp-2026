--change the score of customer with id 10 to 0 and update the country to UK

INSERT INTO customers 
VALUES
	(11,'ELIA','Antartica',NULL),
	(12,'Petter','France',NULL)

UPDATE customers
SET 
	score =00,
	country ='UK'
WHERE 
	id=10


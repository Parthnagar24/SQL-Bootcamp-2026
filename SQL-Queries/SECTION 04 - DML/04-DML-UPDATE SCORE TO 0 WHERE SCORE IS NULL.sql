-- update all customer with a null score by setting their score to 0

UPDATE customers
SET score =0
WHERE score IS NULL          -- (= NULL does not work so we use IS NULL)
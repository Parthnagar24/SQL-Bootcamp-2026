--019.Rename column sales to order_amount in dbo.orders.

SELECT * FROM orders


ALTER TABLE orders
RENAME COLUMN sales TO order_amount;
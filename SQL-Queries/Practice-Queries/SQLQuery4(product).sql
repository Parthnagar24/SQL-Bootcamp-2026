CREATE TABLE order_TABLE
(
order_id INT PRIMARY KEY,
customer VARCHAR(20),
product VARCHAR(20),
quantity INT,
price INT,
order_date DATE
)

INSERT INTO order_TABLE(order_id,customer,product,quantity,price,order_date)
VALUES
(101, 'Aarav', 'Laptop', 1, 55000, '2023-01-10'),
(102, 'Aarav', 'Mouse', 2, 800, '2023-01-11'),
(103, 'Diya', 'Laptop', 1, 56000, '2023-02-05'),
(104, 'Karan','Keyboard', 1, 1500,'2023-03-09'),
(105, 'Aarav','Laptop',1, 54000, '2023-03-10')

SELECT * FROM order_TABLE

--Show all laptops ordered

SELECT *
FROM order_TABLE
WHERE product = 'Laptop'

--Show total amount = quantity × price (use alias).

SELECT (quantity*price) AS total_amount
FROM order_TABLE

--Show customers whose total spending > 55000 (GROUP BY + HAVING).

SELECT
customer,
SUM(price) AS Spending
FROM order_TABLE
GROUP BY customer
HAVING SUM(price)>55000

--Show first 2 most expensive orders (ORDER BY + TOP).

SELECT TOP 2*
FROM order_TABLE
ORDER BY price DESC

--Show customer name in uppercase, product in lowercase.

SELECT
UPPER(customer),
LOWER(product)
FROM order_TABLE

--Add a new column delivery_status VARCHAR(20).

ALTER TABLE order_TABLE ADD 
delivery_status VARCHAR(20)


UPDATE order_TABLE
SET order_date='Delivered'
WHERE order_date < '2023-02-01';

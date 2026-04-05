--Data Manipulation language


INSERT INTO table_name(Col1,Col2,...)
VALUES
(value1,value2,...)


/*
(Col1,Col2,...) we can keep this blank as 
sql automatically considers the sequence of
values when we created a table

col number should match value number

if 2 col then 2 values must be there */


UPDATE tablename
SET c1=v1 
WHERE consditon  --it is must else it would update entire database with that col value

DELETE FROM table_name
WHERE condition -- to remove certain cols/rows

DELETE FROM table_name --removes all rows

TRUNCATE TABLE table_name --removes all rows
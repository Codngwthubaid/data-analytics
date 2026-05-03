USE firstDB;
SELECT * FROM orders;

-- adding a new column at orders table
-- ALTER TABLE orders
-- ADD COLUMN delivery_partner VARCHAR(50);

-- renaming the column name at orders table 
-- ALTER TABLE orders
-- RENAME COLUMN city TO customer_city

-- modifying the size orr datatype of a column at orders table 
-- ALTER TABLE orders
-- MODIFY delivery_partner VARCHAR(30); 

-- dropping a column (only the )
-- ALTER TABLE orders
-- DROP COLUMN rating;
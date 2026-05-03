USE firstDB;
-- count all entries from table
-- SELECT count(*) FROM orders;

-- do sum of mentioned columns values and get it in a new column named as total_revenue
-- SELECT SUM(quantity * price_per_unit) AS total_revence FROM orders;

-- SELECT * FROM orders;

-- get avg of a specific column value
-- SELECT AVG(price_per_unit) FROM orders;

-- get min and max values and get it in a new column named as min_price, max_price
-- SELECT MIN(price_per_unit) AS min_price, MAX(price_per_unit) AS max_price FROM orders;

-- Scalar Functions (these work on each row individually) : 
-- do round off
-- SELECT customer_name, customer_city, ROUND(price_per_unit, 0) FROM orders;

-- get column values in upper and lower case
-- SELECT UPPER(customer_name), LOWER(customer_city) FROM orders;

-- get the length, i.e Ubaid : 5
-- SELECT customer_name, LENGTH(customer_name) FROM orders;

-- ALTER TABLE orders
-- DROP COLUMN delivery_partner;

-- DATE / TIME FUNCTIONS
-- SELECT CURRENT_TIME;
-- SELECT CURRENT_DATE;

-- get date different i.e diff between order_date & delivery_date and get it in a new column as date_difference
-- SELECT order_id, customer_name, customer_city, DATEDIFF(delivery_date, order_date) AS date_difference FROM orders;

-- get only those customer_names which order date (year) is 2025
SELECT customer_name FROM orders WHERE YEAR(order_date) = 2025;

USE firstDB;

-- qurey for get all table data 
-- SELECT * FROM orders;

-- query for null operation, specifically use IS NULL for null checking 
-- SELECT customer_name, city, quantity FROM orders WHERE delivery_date IS NOT NULL;

-- query with WHERE clause usage
-- SELECT customer_name, city, quantity, discount_percent FROM orders WHERE discount_percent > 10;

-- query with AND and ORR operations
-- SELECT * FROM orders WHERE rating > 2 AND city = 'Delhi' OR order_status= 'Delivered';

-- query with ORDER BY clause
-- SELECT * FROM orders ORDER BY order_date DESC
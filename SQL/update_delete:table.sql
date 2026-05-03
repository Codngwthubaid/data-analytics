-- query for sql safe update (not recommended) - use when we don't use id for doing modification table.
-- SET SQL_SAFE_UPDATES = 0; 

SELECT * FROM orders;	

-- query for updating the order status of Ananya Roy
-- first query 
-- UPDATE orders 
-- SET order_status = 'Delivered'
-- WHERE order_id = 10;

-- second query 
-- UPDATE orders 
-- SET discount_percent = 10
-- WHERE order_id = 2;

-- third query 
-- UPDATE orders
-- SET order_status= 'Delivered', 
-- 	payment_mode= 'Debit Card'
-- WHERE order_id = 5;

-- query for deleting a row from table 
-- DELETE FROM orders 
-- WHERE delivery_date IS NULL; 



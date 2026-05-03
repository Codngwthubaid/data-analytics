USE firstDB;

-- creating index for faster search queries, but over usage of indexes may definetly slower the CUD operations 
-- normal index : only for one column
-- CREATE INDEX idx_orders_customer_city
-- ON orders (customer_city);

-- SELECT * 
-- FROM orders 
-- WHERE customer_city= 'Delhi';


-- composite index : for more than one columns
-- CREATE INDEX idx_orders_customer_city_order_status
-- ON orders (customer_city, order_status);

-- SELECT * 
-- FROM orders 
-- WHERE customer_city= 'Delhi'
-- 	AND order_status = 'Delivered';

-- droping indexes
-- DROP INDEX idx_orders_customer_city_order_status ON orders;


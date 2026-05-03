USE firstDB;

-- creating a view : it's not a actual table, but it acts as the actual table but in reality it's behave like a virtual table, if we update any thing in view then it also updates in real table as well. 
-- CREATE VIEW delivered_orders AS 
-- SELECT 
-- 	order_id,
-- 	customer_name,
--     customer_city,
--     order_date,
--     delivery_date
-- FROM orders 
-- WHERE order_status = 'Delivered';

-- updating the view
-- ALTER VIEW delivered_orders AS 
-- SELECT 
--     order_id,
--     customer_name,
--     customer_city,
--     order_date,
--     delivery_date,
--     price_per_unit 
-- FROM orders 
-- WHERE order_status = 'Delivered';


-- UPDATE delivered_orders
-- SET price_per_unit = price_per_unit + 500
-- WHERE order_id = 1;

-- SELECT * FROM delivered_orders;
-- SELECT * FROM orders;


-- deleting a view
-- DROP VIEW delivered_orders;



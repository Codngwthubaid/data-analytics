USE firstDB;

-- DELIMITER $$

-- CREATE PROCEDURE get_delivered_order_plus_sellers_data()
-- BEGIN
-- 	SELECT * 
--     FROM orders
--     WHERE order_status = 'Delivered';
-- 	SELECT * 
--     FROM sellers;
-- END $$

-- DELIMITER ;
 

-- DELIMITER $$

-- CREATE PROCEDURE get_orders_data_by_city(IN city_name VARCHAR(50))
-- BEGIN
-- 	SELECT * 
--     FROM orders
--     WHERE customer_city= city_name;
-- END $$

-- DELIMITER ;

-- calling the cretaed PROCEDURE
-- CALL get_delivered_order_plus_sellers_data();
-- CALL get_orders_data_by_city('Mumbai');


-- deleting the created PROCEDURE
-- DROP PROCEDURE get_delivered_order_plus_sellers_data;
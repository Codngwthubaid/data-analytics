USE firstDB;
-- CREATE TABLE order_cancellations (
--     log_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     cancelled_on DATETIME,
--     reason VARCHAR(100)
-- );

-- creating trigger 
-- DELIMITER $$

-- CREATE TRIGGER test_trigger_for_order_status
-- AFTER UPDATE ON orders
-- FOR EACH ROW 
-- BEGIN 
-- 	IF NEW.order_status = 'Cancelled'
-- 	AND OLD.order_status <> 'Cancelled' THEN 
-- 		INSERT INTO order_cancellations 
-- 		(order_id, cancelled_on, reason)
-- 		VALUES
-- 		(NEW.order_id, NOW(), 'Cancelled by user');
-- 	END IF;
-- END $$

-- DELIMITER ;

-- testing mode for trigger 
-- UPDATE orders
-- SET order_status = 'Cancelled'
-- WHERE order_id  = 1;
-- 	
-- SELECT * FROM order_cancellations;
-- SELECT * FROM orders;


-- deleting the trigger 
-- DROP TRIGGER trigger_log_of_order_cancel;


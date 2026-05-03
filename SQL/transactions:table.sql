USE firstDB;
SELECT * FROM orders;

-- for transctions, first we want to off the autocommit (i.e off the autosave mode in Mysql) - this is a type of flag
-- When autocommit is OFF: Changes are temporary, You can choose to save or undo them
-- SET autocommit = 0;
-- UPDATE orders 
-- SET order_status = 'Canceled'
-- WHERE order_id = 4;

-- rollback is a keyword for doing 'undo' of last previous update which we do while setting autocommit = 0 (false)
-- ROLLBACK;

-- commit is a keyword which saves the changes in permanent format in DB.
-- COMMIT;
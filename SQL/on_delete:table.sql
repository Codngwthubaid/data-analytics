USE firstDB;

-- if we normally try to delete the seller from seller table, it will throws an error because seller is linked with orders, to prevent this when we adding the foreign key to the orders table then we want to add the constraint i.e ON DELETE CASCADE, by which we can simplly delete the seller, and due to this the linked data(i.e order) is also deleted.
-- firstly, we want to delete the existance foreign key and added the new foreign key with ON DELETE CASCADE
-- ALTER TABLE orders
-- DROP FOREIGN KEY connect_sellers_orders_table

-- adding new foreign key
-- ALTER TABLE orders
-- ADD CONSTRAINT connect_sellers_orders_table_FK
-- FOREIGN KEY (seller_id)
-- REFERENCES sellers(seller_id)
-- ON DELETE CASCADE;

-- but in real world scenarios, we dont want to delete our orders data if seller_id deletes, if we have ON DELETE SET NULL, i.e sellers delete but at the place of orders, order entry still at their place but the seller_id becomes empty.
-- ALTER TABLE orders
-- ADD CONSTRAINT connect_sellers_orders_table_FK
-- FOREIGN KEY (seller_id)
-- REFERENCES sellers(seller_id)
-- ON DELETE SET NULL;

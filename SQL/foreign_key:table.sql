USE firstDB;
-- step 1 : check existing orders table
-- SELECT * FROM orders;

-- step 2 : add a new column of seller_id
-- ALTER TABLE orders
-- ADD COLUMN seller_id INT;

-- step 3 : create foriegn key relationship 
-- ALTER TABLE orders
-- ADD CONSTRAINT connect_orders_sellers_table
-- FOREIGN KEY (seller_id)
-- REFERENCES sellers(seller_id);

-- adding an order with seller_id 
-- INSERT INTO orders (seller_id, customer_name, customer_city, product, category, quantity, price_per_unit, discount_percent, order_date, delivery_date, payment_mode, order_status)
-- VALUES (1, 'Arjun Sharma', 'Delhi', 'Wireless Headphones', 'Electronics', 2, 7500, 15, '2023-10-01', '2023-10-05', 'Credit Card', 'Delivered');

-- deleting sellers (only possible when the seller_id is not yet linked with any orders table entry)
-- DELETE FROM sellers
-- WHERE seller_id = 2;
SELECT * FROM orders;
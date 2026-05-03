USE firstDB;

-- for orders table
-- adding seller_id to respective order_id
-- UPDATE orders SET seller_id = NULL WHERE order_id IN (11,12);

-- applying inner join : return all the data which matches in both the tables i.e orders + sellers
-- SELECT
-- 	o.customer_name, 
-- 	o.customer_city, 
--     o.product,
--     o.order_date, 
--     s.seller_name
-- FROM orders o
-- INNER JOIN sellers s
-- ON o.seller_id = s.seller_id;


-- applying left join : return all the orders, no matter the seller is present or not
-- SELECT
-- 	o.customer_name,
--     o.customer_city,
--     o.product,
--     s.seller_name
-- FROM orders o
-- LEFT JOIN sellers s
-- ON o.seller_id = s.seller_id;


-- applying right join : return all the sellers, no matter the order is present or not
-- SELECT
-- 	o.customer_name,
--     o.customer_city,
--     o.product,
--     s.seller_name
-- FROM orders o
-- RIGHT JOIN sellers s
-- ON o.seller_id = s.seller_id;


-- applying join with WHERE clause : no use of INNER, RIGHT, LEFT, we use WHERE for condition
-- SELECT 
-- 	o.customer_name,
--     o.customer_city,
--     o.order_date,
--     o.order_status,
--     s.seller_name
-- FROM orders o
-- JOIN sellers s
-- ON s.seller_id = o.seller_id
-- WHERE order_status = 'Delivered';

SELECT * FROM orders;

-- for sellers table
-- INSERT INTO sellers VALUES(1, 'Seller1', 'City1'), (2, 'Seller2', 'City2'), (3, 'Seller3', 'City3'), (4, 'Seller4', 'City4');
-- SELECT * FROM sellers;
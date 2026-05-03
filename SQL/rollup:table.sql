USE firstDB;

-- SELECT 
-- 	customer_city AS city,
--     category,
--     ROUND(SUM(quantity * price_per_unit)) AS total_sales
-- FROM orders
-- GROUP BY city, category WITH ROLLUP;

-- SELECT category,
--        COUNT(*) AS total_orders
-- FROM orders
-- GROUP BY category WITH ROLLUP;
USE firstDB;

-- ans : 9278
-- SELECT AVG(price_per_unit) 
--     FROM orders;

-- SELECT * FROM orders 
-- WHERE price_per_unit > (
-- 	SELECT AVG(price_per_unit) 
--     FROM orders
-- );

-- SELECT *,
-- 	(SELECT ROUND(AVG(price_per_unit), 0)
-- 		FROM orders) AS average
-- FROM orders;


-- SELECT * 
-- FROM orders
-- WHERE customer_city IN (
-- 	SELECT customer_city
--     FROM orders
--     WHERE category = 'Electronics'
-- );


-- EXISTS keyword 
SELECT * 
FROM orders o
WHERE EXISTS (
	SELECT 1
    FROM orders
	WHERE customer_city = o.customer_city
    AND category = 'Electronics'
)

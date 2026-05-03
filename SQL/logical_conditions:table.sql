USE firstDB;
SELECT * FROM orders;

-- IN operator (only if)
-- SELECT 	customer_name, customer_city FROM orders WHERE customer_city IN ('Delhi', 'Mumbai');

-- NOT IN operator (only if not)
-- SELECT 	customer_name, customer_city FROM orders WHERE customer_city NOT IN ('Delhi', 'Mumbai');

-- BETWEEN operator (only those which comes in the mentioned range)
-- SELECT * FROM orders WHERE price_per_unit BETWEEN 1000 AND 5000;

-- NOT BETWEEN operator (only those which does'nt comes in the mentioned range)
-- SELECT * FROM orders WHERE price_per_unit NOT BETWEEN 1000 AND 5000;

-- LIKE (string matching) operator
-- 'C%' orr 'Ch%' orr 'D%' orr 'De%' -> this will match the starting string
-- SELECT *
-- FROM orders 
-- WHERE customer_city LIKE 'D%'
-- 	AND discount_percent > 10;

-- '%der%' orr '%hi' -> this will match the ending string
-- SELECT *
-- FROM orders 
-- WHERE customer_city LIKE '%hi'
-- 	AND discount_percent > 10;

-- '%der%' orr '%gal%' -> this will match the mentioned string between the entire word, if present then come, if not then not come
-- SELECT *
-- FROM orders 
-- WHERE customer_city LIKE '%der%' 
--    OR customer_city LIKE '%gal%';

-- WILDCARD (specific string matching) operator : customer_name LIKE 'Moha__ed Fai___'
-- SELECT * 
-- FROM orders 
-- WHERE customer_name LIKE 'M%' 
-- 	OR customer_city LIKE '%der%' 
--     AND customer_name LIKE 'Moha__ed Fai___';

-- combining logical operators
-- SELECT * 
-- FROM orders
-- WHERE customer_city LIKE '%lh%'
-- 	AND category IN ('Electronics')
--     AND price_per_unit NOT BETWEEN 5000 AND 50000;
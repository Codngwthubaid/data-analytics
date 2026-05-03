USE firstDB;
SELECT * FROM orders
WHERE discount_percent != 0
ORDER BY delivery_date, price_per_unit
LIMIT 3 OFFSET 3
; 
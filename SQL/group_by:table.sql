USE firstDB;

SELECT 
	customer_city, 
    order_status,
    COUNT(*), 
    ROUND(SUM(quantity * price_per_unit)) 
		AS total_sales
FROM orders
GROUP BY 
	customer_city,
    order_status
HAVING COUNT(*) > 2
ORDER BY total_sales;
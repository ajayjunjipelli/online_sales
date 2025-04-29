SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(amount), 2) AS revenue,
    COUNT(DISTINCT order_id) AS volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months,
    ROUND(SUM(amount), 2) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    DATE_FORMAT(order_date, '%Y-%m');

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    year_months;

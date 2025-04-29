SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    year_months;

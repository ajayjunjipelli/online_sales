SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    ROUND(SUM(amount), 2) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE
    order_date BETWEEN '2010-12-01' AND '2010-12-31'  -- Optional: limit to a specific month
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

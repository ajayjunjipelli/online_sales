SELECT 
    CONCAT(EXTRACT(YEAR FROM order_date), '-', LPAD(EXTRACT(MONTH FROM order_date), 2, '0')) AS year_months,
    ROUND(SUM(amount), 2) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date >= '2010-12-01' AND order_date < '2011-01-01'
GROUP BY 
    CONCAT(EXTRACT(YEAR FROM order_date), '-', LPAD(EXTRACT(MONTH FROM order_date), 2, '0'))
ORDER BY 
    CONCAT(EXTRACT(YEAR FROM order_date), '-', LPAD(EXTRACT(MONTH FROM order_date), 2, '0'));

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date >= '2011-01-01' 
    AND order_date < '2011-02-01'  -- Limiting to January 2011
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    year_months;

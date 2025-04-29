SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM 
    online_sales
WHERE 
    order_date >= '2010-12-01' 
    AND order_date < '2011-01-01'  -- Limiting to December 2010
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    year_months;

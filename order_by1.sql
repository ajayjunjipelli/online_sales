SELECT 
    country,
    COUNT(DISTINCT order_id) AS order_volume_by_country
FROM 
    online_sales
GROUP BY 
    country
ORDER BY 
    order_volume_by_country DESC;  -- Sort by order volume in descending order

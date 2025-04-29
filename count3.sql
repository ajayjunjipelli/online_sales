SELECT 
    product_id,
    COUNT(DISTINCT order_id) AS product_order_volume
FROM 
    online_sales
GROUP BY 
    product_id
ORDER BY 
    product_order_volume DESC;

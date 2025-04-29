SELECT 
    product_id,
    ROUND(SUM(amount), 2) AS product_revenue
FROM 
    online_sales
GROUP BY 
    product_id
ORDER BY 
    product_revenue DESC;  -- Sort by revenue in descending order

-- Challenge 06: Product Popularity Index
SELECT
    p.product_id,
    p.product_name,
    COUNT(DISTINCT o.customer_id) AS unique_buyers,
    COUNT(o.order_id) AS total_orders,
    ROUND(COUNT(o.order_id) * 1.0 / COUNT(DISTINCT o.customer_id), 2) AS popularity_index
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    p.product_id, p.product_name
ORDER BY
    popularity_index DESC;

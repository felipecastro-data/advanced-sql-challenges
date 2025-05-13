-- Challenge 03: Best-Selling Products

SELECT
    p.product_id,
    p.product_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_revenue
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    p.product_id, p.product_name
ORDER BY
    total_revenue DESC
LIMIT 5;

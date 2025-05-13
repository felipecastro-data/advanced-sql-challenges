-- Challenge 07: Customer Lifetime Value (CLTV)
-- Estimates customer lifetime value
-- Calculates average order value and frequency
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.order_amount) AS lifetime_value,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(o.order_amount) / COUNT(o.order_id), 2) AS avg_order_value
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id, c.customer_name
ORDER BY
    lifetime_value DESC
LIMIT 10;

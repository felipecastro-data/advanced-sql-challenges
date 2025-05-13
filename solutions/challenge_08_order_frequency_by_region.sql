-- Challenge 08: Order Frequency by Region
-- Calculates average order frequency per region
-- Combines orders with customer data
SELECT
    c.region,
    COUNT(o.order_id) AS total_orders,
    COUNT(DISTINCT c.customer_id) AS customers,
    ROUND(1.0 * COUNT(o.order_id) / COUNT(DISTINCT c.customer_id), 2) AS orders_per_customer
FROM
    orders o
JOIN
    customers c ON o.customer_id = c.customer_id
GROUP BY
    c.region;

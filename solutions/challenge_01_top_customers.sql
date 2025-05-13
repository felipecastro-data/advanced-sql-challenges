-- Challenge 01: Top Customers by Revenue
-- Selects top 5 customers based on total revenue
-- Aggregates order count and revenue by customer
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(order_amount) AS total_revenue
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    total_revenue DESC
LIMIT 5;

-- Challenge 09: Top Months by Volume
-- Ranks months by number of orders
-- Identifies peak order volume months
SELECT
    DATE_TRUNC('month', order_date) AS month,
    COUNT(order_id) AS total_orders,
    SUM(order_amount) AS total_revenue
FROM
    orders
GROUP BY
    month
ORDER BY
    total_orders DESC
LIMIT 5;

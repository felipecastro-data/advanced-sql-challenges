-- Challenge 01: Top Customers by Revenue

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

-- Challenge 04: Region Sales Share
-- Calculates revenue share by region
-- Compares regional performance as a percentage of total
SELECT
    c.region,
    ROUND(SUM(o.order_amount), 2) AS total_revenue,
    ROUND(100.0 * SUM(o.order_amount) / SUM(SUM(o.order_amount)) OVER (), 2) AS region_share_pct
FROM
    orders o
JOIN
    customers c ON o.customer_id = c.customer_id
GROUP BY
    c.region;

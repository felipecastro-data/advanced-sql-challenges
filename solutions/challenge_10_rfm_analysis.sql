-- Challenge 10: RFM Analysis
-- Performs RFM (Recency, Frequency, Monetary) segmentation
-- Ranks customers based on purchase behavior
WITH rfm AS (
    SELECT
        customer_id,
        MAX(order_date) AS last_order,
        COUNT(order_id) AS frequency,
        SUM(order_amount) AS monetary
    FROM orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    CURRENT_DATE - last_order AS recency,
    frequency,
    monetary
FROM rfm
ORDER BY recency ASC, frequency DESC, monetary DESC;

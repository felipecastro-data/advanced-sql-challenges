-- Challenge 02: Monthly Revenue and MoM Growth
-- Calculates monthly revenue from orders
-- Computes MoM (Month-over-Month) growth using LAG window function
WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        SUM(order_amount) AS total_revenue
    FROM orders
    GROUP BY month
),

revenue_with_growth AS (
    SELECT
        month,
        total_revenue,
        ROUND(
            (total_revenue - LAG(total_revenue) OVER (ORDER BY month)) * 100.0 
            / NULLIF(LAG(total_revenue) OVER (ORDER BY month), 0), 
        2) AS mom_growth
    FROM monthly_revenue
)

SELECT * FROM revenue_with_growth;

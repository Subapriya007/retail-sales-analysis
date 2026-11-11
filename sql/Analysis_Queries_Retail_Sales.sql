USE retail_sales_db;

-- 1. KPIs (matches your KPIs pivot)
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 1) AS margin_pct,
    COUNT(DISTINCT Order_id) AS total_orders,
    ROUND(SUM(Sales) / COUNT(DISTINCT Order_id), 2) AS avg_order_value
FROM retail_sales;
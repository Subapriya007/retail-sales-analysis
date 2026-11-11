USE retail_sales_db;

-- 1. Row count: expect 1500
SELECT COUNT(*) AS total_rows FROM retail_sales;

-- 2. Distinct orders: expect 1500
SELECT COUNT(DISTINCT Order_id) AS total_orders FROM retail_sales;

-- 3. KPIs: expect about 13.35 lakh sales, 1.94 lakh profit, 14.5% margin
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 1) AS margin_pct
FROM retail_sales;

-- 4. Date range: expect dates in 2024 only
SELECT MIN(Order_date) AS first_date, MAX(Order_date) AS last_date
FROM retail_sales;
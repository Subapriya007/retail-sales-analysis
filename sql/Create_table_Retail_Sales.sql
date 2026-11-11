CREATE DATABASE IF NOT EXISTS retail_sales_db;
USE retail_sales_db;

CREATE TABLE retail_sales (
    Order_id        VARCHAR(20),
    Order_date      DATE,
    Region          VARCHAR(30),
    Category        VARCHAR(50),
    Segment         VARCHAR(50),
    Quantity        INT,
    Unit_price      DECIMAL(10,2),
    Discount        DECIMAL(4,2),
    Sales           DECIMAL(12,2),
    Profit          DECIMAL(12,2),
    Month_No        INT,
    Month           VARCHAR(3),
    Quarter         VARCHAR(2),
    Profit_Margin   DECIMAL(12,9),
    Discount_Band   VARCHAR(10)
);
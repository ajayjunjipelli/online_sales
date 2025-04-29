Sales Analysis Project

Overview

This project focuses on analyzing and aggregating sales data from an E-commerce platform using SQL queries. The goal is to extract valuable insights into sales trends, order volumes, and revenue over time.

Dataset

The dataset used is online_sales, which contains sales orders with the following attributes:

order_id (VARCHAR): Unique identifier for each order.

product_id (VARCHAR): Unique identifier for each product.

description (TEXT): Product description.

quantity (INT): Number of units sold.

order_date (DATETIME): Date and time when the order was placed.

unit_price (FLOAT): Price per unit of the product.

customer_id (VARCHAR): Unique identifier for each customer.

country (VARCHAR): Country from which the order was placed.

amount (FLOAT): Total order value (calculated as quantity * unit_price).

Objectives

Extract Month & Year: Use SQL functions to extract the month and year from the order_date column.

Revenue Calculation: Calculate the total revenue for each month using the SUM() function on the amount column.

Order Volume: Calculate the number of distinct orders using COUNT(DISTINCT order_id).

Time Period Limiting: Filter results based on specific time periods (e.g., month-wise or for a particular date range).

Data Grouping: Group results by year-month for monthly aggregation.

Sorting: Sort the results by year-month for chronological order.

SQL Queries

1. Monthly Revenue and Order Volume
This query calculates the total revenue and the order volume for each month.


SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_month,
    ROUND(SUM(amount), 2) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year_month
ORDER BY 
    year_month;

    
2. Revenue and Order Volume for Specific Time Period
This query calculates the revenue and order volume for a specific month, for example, December 2010.


SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_month,
    ROUND(SUM(amount), 2) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date >= '2010-12-01' 
    AND order_date < '2011-01-01'  -- Limiting to December 2010
GROUP BY 
    year_month
ORDER BY 
    year_month;

    
3. Order Volume for the Last 30 Days
This query shows the order volume for products sold in the last 30 days.

SELECT 
    product_id,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date >= CURDATE() - INTERVAL 30 DAY  -- Limiting to the last 30 days
GROUP BY 
    product_id
ORDER BY 
    order_volume DESC;

    
Key SQL Functions Used

EXTRACT(MONTH FROM order_date): Extracts the month part from the order_date field to group by month.

SUM(amount): Calculates the total revenue by summing the amount column.

COUNT(DISTINCT order_id): Counts the distinct number of orders to calculate the order volume.

DATE_FORMAT(order_date, '%Y-%m'): Formats the order_date into a year-month format for easier grouping and sorting.

CURDATE(): Returns the current date to limit results to recent data (e.g., the last 30 days).


Set Up MySQL Database

Create the online_sales table in MySQL:

CREATE TABLE online_sales (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    description TEXT,
    quantity INT,
    order_date DATETIME,
    unit_price FLOAT,
    customer_id VARCHAR(50),
    country VARCHAR(50),
    amount FLOAT
);


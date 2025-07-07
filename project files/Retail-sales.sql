--i imported my dataset
--Check for missing values
SELECT column_name, missing_values
FROM (
    SELECT 'Transaction ID' AS column_name, COUNT(*) FILTER (WHERE "Transaction ID" IS NULL) AS missing_values FROM retail_sales
    UNION ALL
    SELECT 'Date', COUNT(*) FILTER (WHERE "Date" IS NULL) FROM retail_sales
    UNION ALL
    SELECT 'Customer ID', COUNT(*) FILTER (WHERE "Customer ID" IS NULL) FROM retail_sales
    UNION ALL
    SELECT 'Gender', COUNT(*) FILTER (WHERE "Gender" IS NULL) FROM retail_sales
    UNION ALL
    SELECT 'Age', COUNT(*) FILTER (WHERE "Age" IS NULL) FROM retail_sales
    UNION ALL
    SELECT 'Product category', COUNT(*) FILTER (WHERE "Product category" IS NULL) FROM retail_sales
    UNION ALL
    SELECT 'Quantity', COUNT(*) FILTER (WHERE "Quantity" IS NULL) FROM retail_sales
    UNION ALL
    SELECT '"Price per unit"', COUNT(*) FILTER (WHERE '"Price per unit"' IS NULL) FROM retail_sales
    UNION ALL
    SELECT 'Total Amount', COUNT(*) FILTER (WHERE "Total Amount" IS NULL) FROM retail_sales
) AS missing_counts
WHERE missing_values > 0;

SELECT * FROM retail_sales
WHERE "Transaction ID" IS NULL 
   OR "Date" IS NULL 
   OR "Customer ID" IS NULL 
   OR "Gender" IS NULL 
   OR "Age" IS NULL 
   OR "Product category" IS NULL 
   OR "Quantity" IS NULL 
   OR '"Price per unit"' IS NULL 
   OR "Total Amount" IS NULL;

--check for duplicate values
SELECT "Transaction ID", COUNT(*) FROM retail_sales
GROUP BY "Transaction ID"
HAVING COUNT(*) > 1;

--Check for inconsistencies
SELECT * FROM retail_sales
WHERE "Quantity" < 0 OR "Total Amount" < 0;

--Check for miscalculations
SELECT * FROM retail_sales 
WHERE "Total Amount" <> "Quantity" * "Price per unit ";

--Performing various statistical analysis
SELECT 
    AVG("Quantity") AS avg_quantity, 
    AVG("Price per unit ") AS avg_price, 
    AVG("Total Amount") AS avg_total,
    MIN("Total Amount") AS min_total,
    MAX("Total Amount") AS max_total
FROM retail_sales;

--mean
SELECT
TRUNC(AVG("Total Amount"), 2) AS mean_value
FROM retail_sales;

--median
SELECT 
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Total Amount") AS median_value
FROM retail_sales;

--mode
SELECT "Total Amount", COUNT(*) AS frequency
FROM retail_sales
GROUP BY "Total Amount"
ORDER BY frequency DESC
LIMIT 1;

--standard deviation
SELECT 
TRUNC(STDDEV("Total Amount"), 2) AS std_dev_value
FROM retail_sales;

--sales trend over time
SELECT "Date", SUM("Total Amount") AS daily_sales
FROM retail_sales
GROUP BY "Date"
ORDER BY "daily_sales" desc;

--best selling product
SELECT "Product category", SUM("Total Amount") AS total_sales
FROM retail_sales
GROUP BY "Product category"
ORDER BY total_sales DESCVC;

--customer demographics and behaviour
SELECT "Gender", TRUNC(AVG("Age"), 2) AS avg_age, COUNT(*) AS total_customers
FROM retail_sales
GROUP BY "Gender";


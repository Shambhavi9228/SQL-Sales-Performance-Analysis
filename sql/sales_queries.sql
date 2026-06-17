-- Total Sales
SELECT ROUND(SUM(sales),2) AS total_sales
FROM sales;

-- Total Profit
SELECT ROUND(SUM(profit),2) AS total_profit
FROM sales;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM sales;

-- Sales by Region
SELECT region,
       ROUND(SUM(sales),2) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- Top 10 Products
SELECT product_name,
       ROUND(SUM(sales),2) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
FETCH FIRST 10 ROWS ONLY;
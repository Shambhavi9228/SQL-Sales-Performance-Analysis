-- Top Customers
SELECT customer_name,
       ROUND(SUM(sales),2) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
FETCH FIRST 10 ROWS ONLY;

-- Category Performance
SELECT category,
       ROUND(SUM(sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit
FROM sales
GROUP BY category
ORDER BY sales DESC;

-- Most Profitable States
SELECT state,
       ROUND(SUM(profit),2) AS profit
FROM sales
GROUP BY state
ORDER BY profit DESC
FETCH FIRST 10 ROWS ONLY;

-- Average Order Value
SELECT ROUND(AVG(sales),2) AS average_order_value
FROM sales;
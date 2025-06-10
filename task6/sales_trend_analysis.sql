-- Query 1: Monthly Revenue and Order Volume
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- Query 2: Top 3 Months by Revenue
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;

-- Query 3: Top 3 Months by Revenue in ascending order
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue ASC 
LIMIT 3;
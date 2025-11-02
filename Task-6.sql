CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE online_sales (
  order_id VARCHAR(50),
  order_date DATE,
  amount DECIMAL(10,2),
  product_id VARCHAR(50)
);

-- Sample data
INSERT INTO online_sales VALUES
('O001', '2025-01-15', 1500.00, 'P001'),
('O002', '2025-01-20', 2000.00, 'P002'),
('O003', '2025-02-05', 1800.00, 'P003'),
('O004', '2025-02-18', 2200.00, 'P001'),
('O005', '2025-03-10', 2500.00, 'P004');

-- Monthly revenue and order volume
SELECT
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

SELECT
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS total_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;

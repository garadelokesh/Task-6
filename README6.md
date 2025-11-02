Task 6: Sales Trend Analysis Using MySQL

Objective
Analyze monthly revenue and order volume using SQL aggregations.

Tools Used
- MySQL
- online_sales dataset

Queries
- Monthly revenue and order volume
- Top 3 months by revenue

Output
See the screenshot for results.



Interview Question Answers


How do you group data by month and year? 
Using GROUP BY YEAR(order_date), MONTH(order_date) in MySQL.

What's the difference between COUNT() and COUNT(DISTINCT col)?
* COUNT(*) counts all rows; COUNT(DISTINCT col) counts unique values in a column.

How do you calculate monthly revenue? 
With SUM(amount) grouped by month and year.

What are aggregate functions in SQL? 
Functions like SUM(), AVG(), COUNT(), MAX(), MIN() that summarize data.

How to handle NULLs in aggregates? 
Most aggregates ignore NULLs by default. Use COALESCE() to replace NULLs if needed.

What’s the role of ORDER BY and GROUP BY?
GROUP BY groups rows for aggregation; ORDER BY sorts the final result.

How do you get the top 3 months by sales? 
Use ORDER BY SUM(amount) DESC LIMIT 3.
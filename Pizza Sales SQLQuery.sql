select * from pizza_sales

select sum(total_price) AS Total_Revenue from pizza_sales

select sum(total_price)/count(distinct order_id) as Avg_order_value from pizza_sales

select sum(quantity) as Total_Pizza_sold from pizza_sales

select count(distinct order_id) as Total_order_Place from pizza_sales

select CAST(CAST(sum(quantity) AS DECIMAL(10,2))/
CAST(count(distinct order_id)  AS DECIMAL(10,2))  AS DECIMAL(10,2))as Avg_Pizzas_per_order from pizza_sales


SELECT pizza_category, sum(total_price) * 100  / (SELECT sum(total_price) from pizza_sales) as PCT_Sales
from pizza_sales
group by pizza_category

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC


select DATENAME(DW, order_date) as order_Day, COUNT(DISTINCT order_id) as total_orders from pizza_sales
Group by DATENAME(DW, order_date)



select DATENAME(MONTH, order_date) as MONTH_NAME, COUNT(DISTINCT order_id) as total_orders from pizza_sales
Group by DATENAME(MONTH, order_date)
ORDER BY total_orders DESC

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC


SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC







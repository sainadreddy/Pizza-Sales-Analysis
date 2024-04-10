-- Total Revnue 

SELECT SUM(total_price) AS Total_Revenue FROM Merged_Pizza_sales ;

--Avg_Order_Value

SELECT SUM(total_price)/COUNT(DISTINCT(order_id)) AS Avg_Order_Value FROM Merged_Pizza_sales;

--Total_Pizza_Sold

SELECT SUM(quantity) AS Total_Pizza_Sold FROM Merged_Pizza_sales;

--Total_Orders

SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM Merged_Pizza_sales;

--Avg_Pizzas_Per_Order

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order FROM Merged_Pizza_sales;

-- Day Name

SELECT DATENAME(DW,order_date) as order_day,COUNT(DISTINCT order_id) AS Total_orders FROM Merged_Pizza_sales GROUP BY DATENAME(DW,order_date);

--Month Name

SELECT DATENAME(MONTH,order_date) as Month_Name,COUNT(DISTINCT order_id) AS Total_orders FROM Merged_Pizza_sales GROUP BY DATENAME(MONTH,order_date) ORDER BY Total_orders DESC;

--Percentage by month
SELECT pizza_category,SUM(total_price) AS Total_sales,SUM(total_price)*100/(SELECT SUM(total_price) from Merged_Pizza_sales WHERE MONTH(order_date)=1) AS PCT
FROM Merged_Pizza_sales 
WHERE MONTH(order_date)=1
GROUP BY pizza_category;

--Top 5 

SELECT TOP 5 pizza_name,SUM(total_price) AS Total_Revenue FROM Merged_Pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;


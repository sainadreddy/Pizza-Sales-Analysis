<h1 align="center">
  Overview
</h1>

## **Problem Statement***
This dashboard helps to identify the busiest days and times for business, how many pizzas are made during peak periods, the average order value, and our best and worst-selling pizzas.

### Steps Followed:
In this project, we use Microsoft SQL Server and Power BI. Let's review the steps in MS SQL Server:
1. Import data into SQL Server Management Studio. The datasets are CSV files. Right-click on DB > Tasks > Import Flat File. 
>[!TIP]
>Make sure to note the server name, which will be used later to connect to Power BI.
2. Use joins to merge all the files and save the result.
3. Now import the saved file from Step 2, following Step 1. (Make changes to data types while importing because MS SQL will automatically assign the data types when you import, so ensure they are correct before loading the data.)
4. Try running the queries that you intend to display on Power BI.
>[!IMPORTANT]
>This is done to cross-check the values.

Now, for Power BI:

1. Load data into Power BI Desktop using Import > SQL Server > Credentials.
2. Since the sizes of pizzas are S, M, L, XL, XXL, change them to Small, Medium, X-Large, XX-Large using Power Query Editor (Transform Data > Right-click on column > Replace Values > OK > Close & Apply).
3. Use DAX (measure) to calculate total revenue (SUM), total pizzas sold (SUM), and total orders (Distinct count - because of duplicates).
4. Calculate (measure) average order value by dividing total revenue by total orders and average pizzas per order by dividing total pizzas sold by total orders.
5. Add card visuals from the Visualization pane and make necessary formatting adjustments.
6. To extract the day and month from the date column, use Power Query (Transform Data > Add column > Date > Day/Month > Name of day/month). To abbreviate the day/month to the first three letters, use the UPPER and LEFT functions and add as a new column.(Upper(Left(Col_name, Number of letters))
7. Next, add a column chart from the Visualization pane for total orders and day, and perform necessary formatting. Repeat the same for month using an area chart. Add a conditional column to sort the values here.
8. Use a Donut chart to create percentages for total revenue by category and size, and format it accordingly.
9. Use a funnel chart for category and total pizzas sold, and format it.

Additional Steps:

10. Add slicers and format them.
11. To get the top 5 and bottom 5, use filters (TOP) while creating visualizations. Add navigator buttons using the Format option.



Belraetha Ltd: Sales Performance and Customer Behaviour Analysis

An SQL Server based analysis of historical order data.

	
Prepared by	Ogbonda, Miracle Chizim
Programme	Data Analytics
Institution	DITS Academy
Batch	L
Facilitator	Mr Excel Akar
Submitted	November 2026
Table of Contents
Project Overview
Business Objectives
Dataset Description
Tools Used
Data Cleaning and Preparation
SQL Analysis and Key Findings
Business Insights
Recommendations
Project Overview

This project analyses an Orders dataset using SQL. The purpose is to understand Belraetha Ltd's sales and profit performance, identify top-performing regions and product categories, and examine customer purchasing patterns.

SQL queries extract useful information from the dataset and provide insights that can support better business decisions.

Business Objectives
Understand overall sales and profit performance
Identify the region with the highest sales and profit
Analyse the performance of different product categories
Calculate average sales across customer segments
Identify orders with sales above $1,000
Find the five most profitable product sub-categories
Identify product categories generating more than $10,000 in profit
Dataset Description

The Orders dataset contains sales transaction records with information about customers, products, orders and geographical regions.

Key columns used in the analysis:

Column	Description
Order_ID	Unique order identifier
Order_Date	Date the order was placed
Segment	Customer segment (Consumer, Corporate, Home Office)
Region	Sales region (West, East, Central, South)
Category	Product category
Sub_Category	Product sub-category
Sales	Sales value of the order line
Profit	Profit on the order line

The table also holds fields such as Row_ID, Ship_Date, Ship_Mode, Customer_ID, Customer_Name, Country, City, State and Postal_Code.

Tools Used
Microsoft SQL Server: writing and executing SQL queries, retrieving data and performing the analysis
Microsoft Excel: organising, reviewing and validating the dataset, and verifying analysis results
Data Cleaning and Preparation
The dataset was reviewed to understand its structure and available columns.
The first 10 records were retrieved to examine the information it contained.
The dataset was checked for completeness. All expected columns were present, and the initial review revealed no obvious missing data that required correction.
The dataset was then used for the SQL analysis.
SQL Analysis and Key Findings
1. Data Overview

Objective: Retrieve the first 10 records.

sql
SELECT TOP 10 *
FROM ORDERS;

Observation: The first 10 records were retrieved successfully, and the dataset contained all the columns needed for the analysis.

2. Overall Business Performance

Objective: Calculate total sales and total profit.

sql
SELECT
    SUM(SALES)  AS TOTAL_SALES,
    SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS;
Total Sales	Total Profit
$2,297,201.07	$286,397.79

Observation: Total sales are higher than total profit. The business is profitable, with profit at approximately 12.47% of total sales.

3. Regional Performance

Objective: Determine which region generates the highest total sales.

sql
SELECT REGION,
       SUM(SALES) AS TOTAL_SALES
FROM ORDERS
GROUP BY Region
ORDER BY TOTAL_SALES DESC;
Region	Total Sales
West	$725,457.93
East	$678,781.36
Central	$501,239.88
South	$391,721.90

Observation: West is the highest-performing region by total sales.

4. Product Category Performance

Objective: Calculate total sales and total profit for each product category.

sql
SELECT CATEGORY,
       SUM(SALES) AS TOTAL_SALES
FROM ORDERS
GROUP BY Category
ORDER BY TOTAL_SALES DESC;

SELECT CATEGORY,
       SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS
GROUP BY Category
ORDER BY TOTAL_PROFIT DESC;
Category	Total Sales	Total Profit
Technology	$836,154.10	$145,455.66
Furniture	$741,999.98	$18,451.25
Office Supplies	$719,046.99	$122,490.88

Observation: Technology leads in both sales and profit. Furniture is second in sales but last in profit, which points to a margin problem in that category.

5. Customer Segment Analysis

Objective: Determine the average sales per order for each customer segment.

sql
SELECT SEGMENT,
       AVG(SALES) AS AVERAGE_SALES
FROM ORDERS
GROUP BY SEGMENT
ORDER BY AVERAGE_SALES DESC;
Segment	Average Sales
Home Office	$240.97
Corporate	$233.82
Consumer	$223.73

Observation: Home Office customers have the highest average order value, though the gap between segments is small.

6. High-Value Orders

Objective: Identify all orders with sales greater than $1,000.

sql
SELECT *
FROM ORDERS
WHERE SALES > 1000;

Result: 468 orders exceeded $1,000.

Observation: These records represent high-value transactions that can be examined further.

7. Product Profitability

Objective: Identify the top five most profitable product sub-categories.

sql
SELECT TOP 5 SUB_CATEGORY,
       SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS
GROUP BY Sub_Category
ORDER BY TOTAL_PROFIT DESC;
Rank	Sub-Category	Total Profit
1	Copiers	$55,617.90
2	Phones	$44,516.25
3	Accessories	$41,936.78
4	Paper	$34,053.34
5	Binders	$30,221.64

Observation: These five sub-categories contribute the most to overall profitability.

8. Profitability Threshold

Objective: Identify product categories with total profit above $10,000.

sql
SELECT CATEGORY,
       SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS
GROUP BY Category
HAVING SUM(PROFIT) > 10000
ORDER BY TOTAL_PROFIT DESC;
Category	Total Profit
Technology	$145,455.66
Office Supplies	$122,490.88
Furniture	$18,451.25

Observation: All three categories clear the $10,000 threshold, with Technology first.

Business Insights
The business generated over $2.2 million in sales and about $286,397.79 in profit.
Regional analysis shows which locations contribute most to sales, with West on top.
Category analysis shows which products drive revenue and profit. Technology is strongest and Furniture is weakest on profit.
Segment analysis shows differences in purchasing patterns across customer groups.
High-value orders offer a way to identify and understand the most valuable transactions.
The top five sub-categories reveal the products that contribute most to overall profit.

Overall, the analysis gives a clearer picture of the company's performance and the areas that need attention.

Recommendations
Improve regional sales: Identify regions with lower sales and profit and investigate the causes. Use targeted marketing, promotional offers and better distribution strategies to grow sales there.
Focus on profitable categories: Maintain adequate stock and increase promotion for the higher-profit categories. Invest more in Technology, and review the pricing and costs of Furniture to improve its profitability.
Promote the most profitable sub-categories: Give the top five sub-categories more marketing attention, better stock management and attractive promotional offers.
Improve customer retention: Use segment results to build loyalty programmes, personalised offers and targeted campaigns that encourage repeat purchases.
Monitor high-value orders: Study orders above $1,000 to understand the products, customers and purchasing patterns behind them, and use that to attract more high-value customers.
Maintain regular sales and profit monitoring: Track total sales and profit regularly to measure performance, spot changes in profitability and respond quickly to declines.
Improve profitability through cost management: Because total sales are well above total profit, review product costs, operating expenses and pricing to improve margins without hurting customer demand.

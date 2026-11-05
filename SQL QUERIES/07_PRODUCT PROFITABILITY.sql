--Identify the Top 5 most profitable product sub-categories.
SELECT TOP 5 SUB_CATEGORY,
SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS
GROUP BY Sub_Category
ORDER BY TOTAL_PROFIT DESC

--OBSERVATION:
	--The analysis identifies the five most profitable product sub-categories based on their total profit,
	--highlighting the sub categories contributing the most to overall business profitability.
 

--Calculate the total sales and total profit for each product category.
SELECT CATEGORY,
SUM(SALES) AS TOTAL_SALES
FROM ORDERS
GROUP BY Category
ORDER BY TOTAL_SALES DESC

SELECT CATEGORY,
SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS
GROUP BY Category
ORDER BY TOTAL_PROFIT DESC

--OBSERVATION:
	--The analysis compares product categories based on total sales and profit, to identify
	--the highest and lowest performing categories.
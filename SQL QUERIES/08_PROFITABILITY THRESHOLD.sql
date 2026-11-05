--Determine which product categories generated more than $10,000 in total profit.
SELECT CATEGORY,
SUM(PROFIT) AS TOTAL_PROFIT
FROM ORDERS
GROUP BY Category
HAVING SUM(PROFIT) > 10000
ORDER BY TOTAL_PROFIT DESC

--OBSERVATION:
	--The analysis identifies product categories that generated more than $10,000 in total profit, 
	--and highlighted the categories making significant contributions to business profitability.
	--Technology is the first on the chart.
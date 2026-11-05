--Determine which region generates the highest total sales.

SELECT REGION,
SUM(SALES) AS TOTAL_SALES
FROM ORDERS
GROUP BY Region
ORDER BY TOTAL_SALES DESC

--OBSERVATION:
	--The analysis identifies WEST as the highest performing region, generating the highest total sales

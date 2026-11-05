--Determine the average sales per order for each customer segment.
SELECT SEGMENT,
AVG(SALES) AS AVERAGE_SALES
FROM ORDERS
GROUP BY SEGMENT
ORDER BY AVERAGE_SALES DESC

--OBSERVATION:
	--The analysis compares average sales per order across customer segments to identify which segment generates
	--the highest average order value.
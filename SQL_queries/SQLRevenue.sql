
WITH Hotel AS (
SELECT * FROM [Projects].[dbo].[2018]
UNION
SELECT * FROM [Projects].[dbo].[2019]
UNION
SELECT * FROM [Projects].[dbo].[2020]
)

SELECT [arrival_date_year],[arrival_date_month], ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS [Revenue] FROM Hotel
GROUP BY [arrival_date_year],[arrival_date_month]
ORDER BY [arrival_date_year]




WITH Hotel AS (
SELECT * FROM [Projects].[dbo].[2018]
UNION
SELECT * FROM [Projects].[dbo].[2019]
UNION
SELECT * FROM [Projects].[dbo].[2020]
)
SELECT [arrival_date_year],
COUNT(CASE WHEN [is_canceled]>0 THEN [is_canceled] END)*100.0/COUNT([is_canceled]) as [cancelation_percentage] 
FROM Hotel
group by [arrival_date_year]



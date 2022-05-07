WITH Hotel AS (
SELECT * FROM [Projects].[dbo].[2018]
UNION
SELECT * FROM [Projects].[dbo].[2019]
UNION
SELECT * FROM [Projects].[dbo].[2020]
)
SELECT [arrival_date_year],count(*) AS [number_of_cancelations] FROM Hotel
WHERE [is_canceled]>0
GROUP BY [arrival_date_year]



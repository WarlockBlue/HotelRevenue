WITH Hotel AS (
SELECT * FROM [Projects].[dbo].[2018]
UNION
SELECT * FROM [Projects].[dbo].[2019]
UNION
SELECT * FROM [Projects].[dbo].[2020]
)
SELECT [arrival_date_year],[hotel],SUM([total_of_special_requests]) AS total_requests from Hotel
GROUP BY [arrival_date_year],[hotel]



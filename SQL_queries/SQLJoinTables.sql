WITH Hotel AS (
SELECT * FROM [Projects].[dbo].[2018]
UNION
SELECT * FROM [Projects].[dbo].[2019]
UNION
SELECT * FROM [Projects].[dbo].[2020]
)
SELECT * FROM Hotel
LEFT JOIN [Projects].[dbo].[market_segment]
on [Hotel].[market_segment] = [market_segment].[ms]
LEFT JOIN [Projects].[dbo].[meal_cost]
on [Hotel].[meal]=[meal_cost].[meal]
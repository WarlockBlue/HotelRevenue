SELECT R.[year],R.[month],R.[revenue]
FROM [Projects].[dbo].[Revenue] AS R,

(SELECT [year], max([revenue]) AS [max_revenue]
FROM [Projects].[dbo].[Revenue]
group by [year]) AS S

WHERE R.revenue = S.max_revenue
ORDER BY R.year
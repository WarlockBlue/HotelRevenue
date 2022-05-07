
CREATE TABLE [Revenue] (
    [year] SMALLINT,
    [month] NVARCHAR(50),
    [revenue] FLOAT
)

INSERT INTO Revenue

SELECT arrival_date_year as [year],arrival_date_month as [month], round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS revenue FROM Projects.dbo.[2018]
GROUP BY arrival_date_year,arrival_date_month
UNION
SELECT arrival_date_year as [year],arrival_date_month as [month], round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS revenue FROM Projects.dbo.[2019]
GROUP BY arrival_date_year,arrival_date_month
UNION
SELECT arrival_date_year as [year],arrival_date_month as [month], round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS revenue FROM Projects.dbo.[2020]
GROUP BY arrival_date_year,arrival_date_month

ORDER BY [arrival_date_year],[arrival_date_month]





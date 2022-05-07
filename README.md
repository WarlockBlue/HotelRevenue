# Hotel Revenue EDA Using Azure Data Studio SQL
This project deals with Hotel data for the City Hotels and Resort Hotels.

Questions that were solved in this project: 
- Is there an increase in revenue from 2018 to 2019?
- What is the revenue produced per year per month for both Hotels?
- What is the month of highest revenue for each year?
- Cancelations are important to keep track of. How many bookings were canceled each year? What is the percentage of bookings that were canceled each year?
- How many people requested special acommodations?

1. The data was prepared using Python and SQL for Analysis:
  - The Hotel Excel file [hotel_revenue_historical_full](https://github.com/WarlockBlue/HotelRevenue/tree/main/Data/hotel_revenue_historical_full.xlsx)         contained about 100800 total rows of data across 5 sheets. 
  - Each sheet was saved as a CSV file using the Python script [CSVCreator](https://github.com/WarlockBlue/HotelRevenue/blob/main/Data/CSVCreator.py).
  - To start the EDA on this data, the tables were imported into Azure Data Studio. The analysis was done in the **Project** database and **dbo** schema.
  - 5 tables were created containing the data of each CSV created. 

2. SQL Queries here performed in Azure Data Studio to answer some questions about the data:
  - The data from 2018, 2019, and 2020 were merged using UNION for future use [SQLUnion](https://github.com/WarlockBlue/HotelRevenue/tree/main/SQL_queries/SQLUnion.sql).
  - Looking at the data, we can use LEFT JOIN to join the yearly data, with the market_segment, and meal_cost data to unify all information in one place       for future analysis [SQLJoinTables](https://github.com/WarlockBlue/HotelRevenue/blob/main/SQL_queries/SQLJoinTables.sql).
  - Using the yearly data and the query [SQLRevenueTable](https://github.com/WarlockBlue/HotelRevenue/blob/main/SQL_queries/SQLRevenueTable.sql) we can obtain the revenue per year per month and insert it in a new table called Revenue:
![RevenueYearMonth](https://github.com/WarlockBlue/HotelRevenue/blob/main/Tables/RevenueYearMonth.png?raw=true)
  - With this new table Revenue, we can find that August brought the biggest revenue for each year, using the query [SQLMaxRevenueYearMonth.sql](https://github.com/WarlockBlue/HotelRevenue/blob/main/SQL_queries/SQLMaxRevenueYearMonth.sql): 
![HighestRevenueMonthPerYear](Tables/MaxRevenueYearMonth.png?raw=true)
  - To determine the total cancelations each year the query [SQLCancelations](SQL_queries/SQLCancelations.sql) was utilized, generating the following table:
![CancelationsPerYear](Tables/TotalCancelationsPerYear.png?raw=true)
  - What percentage of the total bookings were canceled? Using the query [SQLCancelationPercentage](SQL_queries/SQLCancelationPercentage.sql) we obtain the following table:
![CancelationPercentage](Tables/CancelationPercentage.png?raw=true)
  - Finally we can obtain the number of special requests for each hotel by using the query [SQLTotalRequests](SQL_queries/SQLTotalRequests.sql):
![TotalRequestPerHotel](Tables/TotalRequests.png?raw=true)

3. From these queries we can obtain the following answers for the questions stated above:
  - 

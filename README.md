# Hotel Revenue EDA Using Azure Data Studio SQL
This project deals with Hotel data for the City Hotels and Resort Hotels.

Questions that were solved in this project: 
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
  - Using the yearly data we can obtain the revenue per year per month as shown below:
  

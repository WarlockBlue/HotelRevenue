#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# To crate multiple CSV files to analyze in SQL

import pandas as pd
HOTEL = pd.ExcelFile("hotel_revenue_historical_full.xlsx")

hotel = {sheet_name:HOTEL.parse(sheet_name)
         for sheet_name in HOTEL.sheet_names}

hotel["2018"].to_csv("2018.csv")
hotel["2019"].to_csv("2019.csv")
hotel["2020"].to_csv("2020.csv")
hotel["market_segment"].to_csv("market_segment.csv")
hotel["meal_cost"].to_csv("meal_cost.csv")
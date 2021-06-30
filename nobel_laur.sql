CREATE TABLE [nobel_laureates] (
  [Year_01] integer,
  [category_code] integer,
  [Prize] varchar(100),
  [Motivation] varchar(100),
  [Prize_Share] varchar(100),
  [Laureate_ID] integer,
  [Laureate_Type_code] integer,
  [Full_Name] varchar(100),
  [Birth_id_date] integer,
  [Birth_city_code] integer,
  [Birth_Country_code] integer,
  [Sex] varchar(100),
  [Organization_Name] varchar(100),
  [Organization_City] varchar(100),
  [Organization_Country] varchar(100),
  [Death_id_date] integer,
  [Death_city_code] integer,
  [Death_Country_code] integer
)
GO

CREATE TABLE [dim_Category] (
  [category_code] integer,
  [category_name] varchar(100)
)
GO

CREATE TABLE [dim_Laureate_Type] (
  [Laureate_Type_code] integer,
  [Laureate_Type_name] varchar(100)
)
GO

CREATE TABLE [dim_Country] (
  [Country_code] integer,
  [Country_name] varchar(100)
)
GO

CREATE TABLE [dim_city] (
  [city_code] integer,
  [Country_code] integer,
  [city_name] varchar(100)
)
GO

CREATE TABLE [dim_calendar] (
  [id_date] integer,
  [year_date] integer,
  [month_date] integer,
  [week_date] integer,
  [date_dt] date
)
GO

ALTER TABLE [dim_Category] ADD FOREIGN KEY ([category_code]) REFERENCES [nobel_laureates] ([category_code])
GO

ALTER TABLE [dim_Laureate_Type] ADD FOREIGN KEY ([Laureate_Type_code]) REFERENCES [nobel_laureates] ([Laureate_Type_code])
GO

ALTER TABLE [dim_Country] ADD FOREIGN KEY ([Country_code]) REFERENCES [nobel_laureates] ([Death_Country_code])
GO

ALTER TABLE [dim_city] ADD FOREIGN KEY ([city_code]) REFERENCES [nobel_laureates] ([Death_city_code])
GO

ALTER TABLE [dim_city] ADD FOREIGN KEY ([city_code]) REFERENCES [nobel_laureates] ([Birth_city_code])
GO

ALTER TABLE [dim_Country] ADD FOREIGN KEY ([Country_code]) REFERENCES [nobel_laureates] ([Birth_Country_code])
GO

ALTER TABLE [dim_calendar] ADD FOREIGN KEY ([id_date]) REFERENCES [nobel_laureates] ([Birth_id_date])
GO

ALTER TABLE [dim_calendar] ADD FOREIGN KEY ([id_date]) REFERENCES [nobel_laureates] ([Death_id_date])
GO

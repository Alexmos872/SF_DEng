CREATE TABLE [country_continent] (
  [country_codes_iso2] varchar(100),
  [continent_codes_iso2] varchar(100)
)
GO

CREATE TABLE [country_currency] (
  [country_codes_iso2] varchar(100),
  [currency_codes_iso2] varchar(100)
)
GO

CREATE TABLE [country_iso2_iso3] (
  [country_codes_iso2] varchar(100),
  [country_codes_iso3] varchar(100)
)
GO

CREATE TABLE [country_list] (
  [country_codes_iso2] varchar(100),
  [country_names] varchar(100)
)
GO

CREATE TABLE [country_phone_code] (
  [country_codes_iso2] varchar(100),
  [country_phone_code] varchar(100)
)
GO

CREATE TABLE [countries_world] (
  [Country] varchar(100),
  [Region] varchar(100),
  [Population] integer,
  [Area] integer,
  [Popul_Density] float,
  [Coastline] float,
  [Net_migration] float,
  [Infant_mortality] float,
  [GDP_per_capita] float,
  [Literacy] float
)
GO

CREATE TABLE [worldcitiespop] (
  [Country] varchar(100),
  [City] varchar(100),
  [AccentCity] varchar(100),
  [Region] varchar(100),
  [Population] float,
  [Latitude] float,
  [Longitude] float
)
GO

CREATE TABLE [nobel_laureates] (
  [Year_01] integer,
  [Category] varchar(100),
  [Prize] varchar(100),
  [Motivation] varchar(100),
  [Prize_Share] varchar(100),
  [Laureate_ID] integer,
  [Laureate_Type] varchar(100),
  [Full_Name] varchar(100),
  [Birth_Date] date,
  [Birth_City] varchar(100),
  [Birth_Country] varchar(100),
  [Sex] varchar(100),
  [Organization_Name] varchar(100),
  [Organization_City] varchar(100),
  [Organization_Country] varchar(100),
  [Death_Date] date,
  [Death_City] varchar(100),
  [Death_Country] varchar(100)
)
GO

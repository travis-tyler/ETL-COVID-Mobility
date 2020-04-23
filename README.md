# COVID_Mobility
ETL project

We propose to import user mobility data from Apple and Google for the period from February to April 2020 in Pandas, import data for new COVID-19 cases for the same period, and import population data by country.  We will merge the Apple and Google data in Pandas and filter the data by dates and country.  We will then load the mobility data, COVID-19 infection data, and population data into 3 separate tables in PostgreSQL and join them on country. 
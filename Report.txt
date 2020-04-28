ETL Project Report
Pandas II: The SQL
Rolando Navarro
Robert Ottogalli
Daniel Santa
Travis Tyler


EXTRACT: We pulled two CSV datasets from Kaggle (country population data and COVID-19 infection data), and two CSV datasets pertaining to mobility from the websites of Apple and Google. 


Links:
Population CSV
Infection CSV
Apple mobility data
Google mobility data


TRANSFORM: Using Jupyter Notebooks and Python/Pandas, we created four data frames using the data we extracted. We displayed them to get an idea of what information they contained. We made the following changes:


1. Apple mobility dataframe
   1. Selected only the data from countries, removing city data. This involved using loc to find where “geo_type” equaled “country/region.” 
   2. The Apple mobility data included values for walking, driving, and public transportation. We converted this to a single value by grouping by “region” and using the Pandas mean() function. 
   3. The data frame had a “region” as a column, but each date as its own column as well. To convert these many columns into a single “dates” column, we used Panda’s melt() function. 
   4. We renamed the columns and reset the index.
   5. Finally, because some countries in this table were spelled differently compared to the countries/population table, we used loc to find and either delete them or rename them.


2. Google mobility dataframe
   1. To get only the country-level data, we removed all rows where the “subregion” column was NOT NaN.
   2. The Google mobility data included values for trips to various locations (e.g. retail, grocery, parks, workplaces, etc.). We converted this to a single value by averaging them together and creating a new column.
   3. This data differs from the Apple mobility data in that it shows percent change from a baseline; Apple’s is percent of its baseline (e.g. No change from baseline would be 0 in the Google’s, but 100 in Apple’s). To align them we simply added 100 to each value in the Google dataframe.
   4. We dropped NaN values rather than converting them to 0.
   5. Like the other tables, because some countries in this table were spelled differently compared to the countries/population table, we used loc to find and either delete them or rename them.
   6.  Finally, we dropped and renamed columns, and reseted the index.


3. COVID-19 dataframe
   1. Using Pandas fillna() function, we converted NaN values to 0 (zero indicates no cases reported) and cast them as integers (a person is either sick or not, can’t be a float).
   2. Because some countries in this table were spelled differently compared to the countries/population table, we used loc to find and either delete them or rename them.


4. Population dataframe
   1. Dropped all columns from the population data frame except for country name and population, renamed the columns, and reset index.




5. Merged Google and Apple dataframes into a single dataframe.






LOAD: Referencing the transformed data frames, we created an SQL schema in Postgres, with 3 tables, each corresponding to a different data frame. Using SQLAlchemy in our Jupyter Notebook, we created an engine and established a connection to the SQL tables. Then, with Panda’s to_sql() function, we populated the tables with the corresponding data frames. We used the “if_exists=’replace’” parameter in the to_sql() function so it would overwrite existing data in the tables and we wouldn’t have to drop the table and restart every time.
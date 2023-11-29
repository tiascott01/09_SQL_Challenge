# 09_SQL_Challenge
Overview
This repository contains a two correlating SQL files (Schema and Query), a "Queries" folder with exported CSV files, and a "Resources" folder for the corresponding csv's for importing into PostgreS or PgAdmin4, and an Entity Relationship Diagram. The directions for the module were to use SQL to pull data into a schema and then run queries against it, creating exported data.

### Results
In the 09_SQL_Challenge, this dataset is an SQL query of 6 different resources. A schema was created to create individual tables in SQL and then create primary and foreign keys which "appends" data together via columns in each table. In order to run specific queries against the schema, a Query.SQL file was created to further analyze the data in regards to specific conditions. Once the query had been run, a corresponding CSV was exported to a Queries folder and labeled per the query number. Finally an Entity Relationship Diagram was created to address which files were used and their relationship to each other. In the diagram, the Primary Keys are noted next to the table line and the Foreign Keys are noted as the lines which tie each relationship together.


### Usage
You can use this method to analyze the data in the corresponding resource CSV's.

Open the respective file ('Schema.SQL') in PostgreS or PgAdmin4.

Upon opening the Schema file, run the first step to drop all the tables if they already exist. 
If you get an error, you may need to force close all the tables in the schema.

Once all the tables have been dropped, run the second step and individually create all the tables in the schema.

Once all the tables are created, navigate to the specific table in the database navigator. Import the corresponding CSV to the corresponding table. 
Ensure that the delimeter and header rows are imported correctly.

Once the data has been imported into the corresponding table, run the 4th step and tie the tables together with the primary keys and foreign keys. 

After the steps in the schema have been run, you can begin to query specific requests.

Open the respective file ('Query.SQL') in PostgreS or PgAdmin4.

Make sure that all the Schema files have been run properly. If all has been run properly, begin running individual queries.

After the query has been displayed, export the result of the query to a CSV file.




### Resources and Citations

Quick DBD - https://www.quickdatabasediagrams.com/

General - ChatGpt.com

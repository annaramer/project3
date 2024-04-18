# Data Engineering Project: Housing Market

## Project Overview
- This project aims to conduct a comprehensive analysis of the housing market by integrating data from various sources such as Zillow and the US Census. The objectives include understanding trends in housing prices and correlating them with population factors. The significance lies in providing valuable insights for stakeholders such as homebuyers.

## Data Integration
- As part of the ETL process, data from various sources was integrated into the project, focusing on the housing market in the top 10 most populated cities in the U.S. as of 2022. This involved extracting housing-related information, transforming it as needed, and loading it into the analysis pipeline. By specifically targeting the housing markets of these major cities, the analysis provides valuable insights into urban real estate trends and dynamics.
- The integration process included cleaning and preprocessing the data to ensure consistency and accuracy for analysis.
- We chose to use SQL as our data is very tabular and numerical, as well as homogenous in shape, meaning it worked well within the SQL format.  Using NoSQL would be more complicated for these types of datasets and would make working with them more challenging.  

## Ethical Considerations
- Both datasets used here are publicly available and contain no identifying information to any individuals, which is often a concern especially when it comes to housing data.  Zillow's data is very generalized, as is the publicly available census data.  We felt comfortable using both of these datasets as-is due to these factors.  

## The primary sources used for data integration are:
- Zillow dataset (zillow_values_2024.csv): Provides information on housing prices.
- US Census population dataset (SUB-IP-EST2022-POP.xlsx): Offers demographic data.
- State Abbreviations dataset (State_Abreviations.xlsx): Helped in standardizing state abbreviations.

## Files
### Data Files
- zillow_values_2024.csv: Zillow dataset containing housing information.
- SUB-IP-EST2022-POP.xlsx: US Census population dataset.
- State_Abreviations.xlsx: Dataset with state abbreviations.  
### Code Files
- Zillow Data.ipynb: Jupyter Notebook for transforming Zillow data to housing.csv.
- Population data.ipynb: Jupyter Notebook for transforming population data to population.csv.
- Cerberus.ipynb: Jupyter Notebook for data validation, preparing files for SQL, and importing back to DataFrame.
- Housing_Prices.sql: SQL code for creating tables.
### Other Files
- ERD_Housing_DB.png: Entity-Relationship Diagram (ERD) of the SQL database.
- Project 3-Data Engineering.pdf: Presentation slides summarizing the project.

## Credits
- Zillow: Provided the housing dataset.
- https://www.zillow.com/research/data/
- US Census Bureau: Provided demographic data.

## Project contributers (alphabetical order): 
- Anna Ramer
- David Czoper
- Jithu Jacob
- Monica Dahl

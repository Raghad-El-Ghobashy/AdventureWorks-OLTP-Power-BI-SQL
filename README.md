# AdventureWorks Sales Analysis OLTP

## Overview

This project involves analyzing the AdventureWorks OLTP database to gain insights into sales performance. The analysis includes creating views, building fact and dimension tables, and visualizing various sales metrics.

## Data Source

- **AdventureWorks OLTP database**

## Tools Used

- SQL Server for data extraction and transformation
- Power BI for data visualization and analysis

## 🔍 All Process

1. **Data Collection:** Gathered sales data from AdventureWorks database.
2. **Data Extraction** : Retrieved data from essential tables, views and function.
3. **Date Table Creation**: Implemented an M language script to generate a comprehensive date dimension table for enhanced time-based analysis.
4. **Data Transformation**: Cleaned and prepared the dataset by renaming tables and columns and removing unused data.
5. **Data Modeling**: Structured data into a star schema for efficient querying and analysis.
6. **Measures**: Created a set of critical measures for analysis, including the use of USERELATIONSHIP function to manage Inactive Relationships in a Role-Playing Dimension.
7. **Data Analysis:** Performed descriptive statistics and trend analysis.
8. **Data Visualization:** Created interactive dashboards using Power BI.
9. **Reporting:** Summarized findings and prepared reports for stakeholders.

## Steps and Processes

### 1. Data Extraction and Transformation

- Created views to extract data from the AdventureWorks database.
- Built the fact table and dimension tables required for the analysis.

### 2. Visualizations

- **Line Charts:**
  - Visualized total orders by:
    - Order Date
    - Ship Date
    - Due Date
- **MAX QTY by Products:**
  - Identified and visualized the maximum quantity ordered for each product.

### 3. Metrics and Analysis

- **Salesperson Metrics:**
  - Created a matrix table to display:
    - Salesperson's full name
    - Sum of `LineTotal`
    - Sparkline to show the sum of `LineTotal` by order date
  - Included filters for:
    - Quarter
    - Month
    - Year
    - Product
    - Category

- **Territory Metrics:**
  - Created a matrix table to show total orders by:
    - Territory name
    - Year


## Filters

- Quarter
- Month
- Year
- Product
- Category


## 📈 Reports :
Reports were created to effectively communicate the insights and findings from the data analysis.

Report 1 ![Report 1](https://github.com/Raghad-El-Ghobashy/AdvantureWorks-OLTP-Power-BI/blob/main/Report%201.PNG)

Report 2 ![Report 2](https://github.com/Raghad-El-Ghobashy/AdvantureWorks-OLTP-Power-BI/blob/main/Report%202.PNG)

Report 3 ![Report 3](https://github.com/Raghad-El-Ghobashy/AdvantureWorks-OLTP-Power-BI/blob/main/Report%203.PNG)



## 📧 Contact

For more informations, please contact:

- **Email:** [raghadashraf6@gmail.com]
- **LinkedIn:** [https://www.linkedin.com/in/raghad-el-ghobashy/]




---

# Nashville Housing Data Cleaning Project

## Overview

This project focuses on cleaning and preparing Nashville housing data for analysis using SQL. It is designed to demonstrate my ability to work with raw datasets, identify and handle common data quality issues, and ensure that the data is suitable for subsequent analysis or reporting.

The project is a part of my portfolio showcasing my SQL skills, specifically in the context of data wrangling and preparation. The primary goal is to transform a raw dataset into a clean, structured, and usable form, which is essential for accurate and meaningful analysis.

## Dataset

The dataset contains records of housing properties in Nashville, including various attributes such as property address, sale date, property type, sale price, and more. However, like many real-world datasets, it contains inconsistencies, missing values, and formatting issues that need to be addressed before analysis.

## Project Goals

- **Data Cleaning**: The main focus of this project is to apply SQL techniques to clean the dataset. This includes:
  - Handling missing and null values
  - Standardizing data formats (e.g., dates, addresses)
  - Removing duplicate records
  - Correcting inconsistencies in categorical data
  - Parsing and splitting columns when necessary
- **Data Transformation**: Once cleaned, the data is transformed into a format that is ready for analysis. This involves:
  - Creating new calculated fields to enrich the data
  - Normalizing data where necessary to reduce redundancy
  - Ensuring referential integrity in related data columns
- **Optimization**: To ensure efficient querying, indexes are created, and redundant columns are dropped.

## Key SQL Techniques Used

- **String Functions**: Leveraging SQL string functions to clean and standardize textual data, including `UPPER()`, `LOWER()`, `SUBSTRING()`, `REPLACE()`, and `TRIM()`.
- **Date Functions**: Working with SQL date functions such as `CAST()`, `CONVERT()`, `YEAR()`, and `MONTH()` to format and manipulate date fields.
- **Joins and Subqueries**: Using joins and subqueries to identify duplicate records, validate data integrity, and retrieve relevant information from multiple tables.
- **Window Functions**: Utilizing window functions like `ROW_NUMBER()` and `RANK()` to handle duplicate records and generate insights for data analysis.
- **Data Aggregation**: Using `GROUP BY` and `HAVING` clauses to summarize data for reporting and detecting outliers or inconsistencies in the dataset.
- **Error Handling and Validation**: Implementing checks to identify potential issues in the data cleaning process, ensuring that all steps are correct and repeatable.

## Challenges Faced

During the project, several challenges were encountered that required thoughtful solutions:
- **Inconsistent Formatting**: Data fields such as property addresses and sale prices had varying formats, making it difficult to analyze. Addressing these inconsistencies required extensive use of SQL string functions.
- **Duplicate Records**: The dataset contained multiple duplicate entries, which needed to be carefully identified and removed without losing important information.
- **Null Values**: Dealing with missing or null values was a critical aspect of the project. Various techniques, such as filling in missing data or removing incomplete records, were employed based on the specific field and context.

## Results

By the end of the project, the dataset was fully cleaned, with all inconsistencies resolved and missing values handled appropriately. The clean dataset is now ready for further analysis, including tasks such as building predictive models, generating reports, or visualizing trends in the Nashville housing market.

This project showcases my proficiency in SQL for data cleaning and transformation, a vital skill in any data analysis workflow. It also highlights my ability to work through real-world data problems and prepare high-quality datasets for accurate analysis.

---

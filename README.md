# Zomato_Analysis

This project, Zomato_Analysis, utilizes SQL to analyze data related to restaurants and their details. It involves creating a database named "Zomato_Analysis" and a table named "zomato_details" to store information about various restaurants.

## Table of Contents

Project Description

Database Setup

Data Import

Usage

Contributing


## Project Description

Zomato_Analysis is a project that focuses on analyzing restaurant data. The main goal is to understand various aspects of restaurants such as their names, locations, cuisines, ratings, and pricing. The project uses SQL to create a database and table structure to store and manage the data efficiently.

## Database Setup

To set up the database for this project, follow these steps:

1. Create a database named "Zomato_Analysis".
2. Switch to the "Zomato_Analysis" database using the following command:
USE Zomato_Analysis;
3. Execute the SQL code to create the "zomato_details" table, which contains columns for restaurant details such as restaurant number, name, city, address, rating, cost per person, cuisine, restaurant link, menu category, item, price, and vegetarian or non-vegetarian information.
   
## Data Import

To import data into the "zomato_details" table, you have two options:

### 1. Using LOAD DATA INFILE:  
This method allows you to import data from a CSV file. Make sure to specify the correct file path in the SQL code. Adjust the field and line terminators as per the CSV file format.

### 2. Using Table Data Import Wizard: 
This method utilizes a "Table Data Import Wizard" tool. You can use this tool to import data into the "zomato_details" table. The wizard provides a user-friendly interface to map columns and import data from various file formats.

Choose the method that suits your requirements and ensure the data is properly formatted and aligned with the table structure.

## Usage

After setting up the database and importing the data, you can start querying and analyzing the restaurant information stored in the "zomato_details" table. Utilize SQL statements to perform tasks such as filtering, sorting, aggregating, and generating insights based on the available data.

Feel free to explore the SQL code and modify it according to your analysis requirements.

## Contributing

Contributions to the Zomato_Analysis project are welcome. If you find any issues, have suggestions, or want to contribute improvements, please create a pull request with your changes.

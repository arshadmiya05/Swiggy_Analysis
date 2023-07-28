create database Zomato_Analysis 
use Zomato_Analysis

CREATE TABLE zomato_details (
  restaurant_no   INTEGER  NOT NULL,
  restaurant_name VARCHAR(50) NOT NULL,
  city            VARCHAR(9) NOT NULL,
  address         VARCHAR(204),
  rating          NUMERIC(3,1) NOT NULL,
  cost_per_person INTEGER,
  cuisine         VARCHAR(49) NOT NULL,
  restaurant_link VARCHAR(136) NOT NULL,
  menu_category   VARCHAR(66),
  item            VARCHAR(188),
  price           VARCHAR(12) NOT NULL,
  veg_or_nonveg   VARCHAR(7)
);

--Importing data into table swiggy_details

LOAD DATA INFILE 'C:/Users/ANKIT/Desktop/zomato.csv'
INTO TABLE swiggy details
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 

-- We can also input the values in table using 'Table Data Import Wizard' 

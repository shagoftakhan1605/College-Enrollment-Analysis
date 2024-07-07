-- Create database
CREATE DATABASE uni_demo;

-- Use the database
USE uni_demo;

-- Create table
CREATE TABLE demo_table (
    ID INT,
    Level_of_Student VARCHAR(255),
    Graduate_Level_of_Student VARCHAR(255),
    Total_Men INT,
    Total_Women INT,
    American_Indian_Alaskan_Men INT,
    American_Indian_Alaskan_Women INT,
    Asian_Men INT,
    Asian_Women INT,
    African_American_Men INT,
    African_American_Women INT,
    Hispanic_Men INT,
    Hispanic_Women INT,
    Hawaiian_or_Pacific_Islander_Men INT,
    Hawaiian_or_Pacific_Islander_Women INT,
    White_Men INT,
    White_Women INT,
    Mixed_Race_Men INT,
    Mixed_Race_Women INT,
    Unknown_Race_Men INT,
    Unknown_Race_Women INT,
    Non_Resident_Alien_Men INT,
    Non_Resident_Alien_Women INT
);

-- Import data from CSV file
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Dataset - 2021.csv'
INTO TABLE demo_table
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(ID, Level_of_Student, Graduate_Level_of_Student, Total_Men, Total_Women, 
 American_Indian_Alaskan_Men, American_Indian_Alaskan_Women, Asian_Men, Asian_Women,
 African_American_Men, African_American_Women, Hispanic_Men, Hispanic_Women,
 Hawaiian_or_Pacific_Islander_Men, Hawaiian_or_Pacific_Islander_Women, White_Men, White_Women,
 Mixed_Race_Men, Mixed_Race_Women, Unknown_Race_Men, Unknown_Race_Women,
 Non_Resident_Alien_Men, Non_Resident_Alien_Women);

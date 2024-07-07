# College-Enrollment-Analysis

## Project Overview

This project involves a comprehensive analysis of college enrollment demographics using a dynamic data management and visualization approach. By creating a MySQL database to store the enrollment dataset and utilizing Tableau for interactive visualizations, this project aims to provide real-time insights into the demographic distribution of students based on gender and ethnic origin.

## Project Structure

1. **Database Creation and Management:**
   - **Objective:** Establish a robust database to manage the college enrollment dataset efficiently.
   - **Tool Used:** MySQL
   - **Details:** The dataset was imported into a MySQL database to enable efficient querying and management.

2. **Data Analysis and Visualization:**
   - **Objective:** Create dynamic and interactive visualizations to analyze and present the enrollment data.
   - **Tool Used:** Tableau
   - **Details:** Tableau was connected to the MySQL database to enable real-time updates and dynamic data interactions. Two dashboards were created to visualize the enrollment demographics.

## Tools and Technologies

- **MySQL:** Used to create and manage the database, and to handle data imports and queries.
- **Tableau:** Used for data visualization, creating interactive dashboards that reflect real-time data updates.

## Database Management Code (MySQL)

```sql
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
```

## Data Visualization (Tableau)

### Dashboards

1. **Male Population Analysis:**
   - **Description:** This dashboard visualizes the distribution of the male population across different education levels and ethnic groups.
   - **Key Features:** Tree plots representing education levels and bubble density indicating population size. Bar charts show the ethnic distribution of male students.

2. **Female Population Analysis:**
   - **Description:** This dashboard visualizes the distribution of the female population across different education levels and ethnic groups.
   - **Key Features:** Similar to the male analysis, this dashboard includes tree plots and bar charts to represent the demographic distribution of female students.

### Analysis Insights

- **Male Population:**
  - Higher density near the outer rings of the tree plot indicates a larger male population at undergraduate levels compared to graduate levels.
  - White men have the highest representation, with minority groups like Hispanic and African American men having lower enrollment numbers, especially in graduate programs.

- **Female Population:**
  - Similar trends are observed for the female population, with higher enrollment at the undergraduate level.
  - White women dominate the enrollment statistics, with lower representation from minority groups in graduate programs.

## How to Run the Project

1. **Set up the MySQL Database:**
   - Install MySQL Server.
   - Use the provided SQL code to create the database and table, and to load the data from the CSV file.

2. **Set up Tableau:**
   - Install Tableau.
   - Connect Tableau to the MySQL database.
   - Import the provided Tableau workbook (`Admission.twb`) to visualize the data.

3. **Analyze the Data:**
   - Open the Tableau workbook to view and interact with the dashboards.
   - Explore the different visualizations to understand the demographic distribution of the student population.

## Conclusion

This project demonstrates a comprehensive approach to managing and visualizing college enrollment data. By integrating MySQL and Tableau, it provides real-time insights into student demographics, aiding in strategic decision-making for enrollment management.

## Acknowledgments

- Thanks to [Your Institution/Company] for providing the data and resources.
- Special thanks to the Tableau community for their support and resources.

By following these instructions, users should be able to recreate the analysis and gain insights from the data. The provided MySQL code and Tableau workbook are essential components of this project, ensuring the database is properly set up and the visualizations are accurately represented.

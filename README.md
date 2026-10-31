# College Enrollment Analysis (MySQL + Tableau)

Enrollment counts for US colleges in 2021, broken down by sex and ethnicity, are loaded into a MySQL database and explored in a Tableau workbook with two dashboard stories (male and female students).

**Files**
* `Dataset - 2021.csv`: the data (103,603 rows, 6,086 institutions)
* `database.sql`: creates the `uni_demo` database and `demo_table`, and loads the CSV
* `College Enrollment Tableau Workbook.twb`: Tableau workbook connected to the MySQL table

---

## Dashboards

**Male students**
![Man Story](https://github.com/shagoftakhan1605/College-Enrollment-Analysis/assets/173546811/ed4ea0a4-dfd5-4dc7-a251-947e59e152dd)

**Female students**
![Woman Story](https://github.com/shagoftakhan1605/College-Enrollment-Analysis/assets/173546811/33c4886a-e50e-4bfa-a65d-248570a264ae)

---

## Data Structure

* `ID`: institution identifier
* `Level of Student`: student level code. Rows overlap: for every institution, the counts for code 1 equal the sum of codes 2 and 12, so code 1 is all students, 2 is undergraduate and 12 is graduate. Other codes are further sub-groups.
* `Graduate Level of Student`: a second level code
* 20 count columns: men and women in each ethnic group (American Indian or Alaska Native, Asian, Black or African American, Hispanic, Native Hawaiian or Pacific Islander, White, two or more races, unknown, non-resident), plus total men and total women

Because the rows include both totals and sub-groups, summing all rows counts the same students several times. Totals should be taken from one level code at a time.

---

## Key Figures

Calculated from the CSV with level codes 1, 2 and 12 (rows with second level code 3641 excluded):

| | Men | Women |
| --- | --- | --- |
| All students | 9.9 million | 14.1 million |
| Undergraduate | 8.5 million | 11.8 million |
| Graduate | 1.4 million | 2.3 million |

Share of each group (%):

| Group | Undergrad men | Graduate men | Undergrad women | Graduate women |
| --- | --- | --- | --- | --- |
| White | 49.1 | 47.9 | 46.5 | 51.0 |
| Hispanic | 20.1 | 9.6 | 22.1 | 11.4 |
| Black or African American | 10.5 | 8.7 | 13.4 | 12.9 |
| Asian | 7.2 | 7.3 | 6.2 | 6.3 |
| Non-resident | 3.4 | 17.0 | 2.2 | 8.3 |

* Women outnumber men at both levels (about 59% of all students).
* White students are the largest group for both sexes.
* The Hispanic share roughly halves from undergraduate to graduate level, for both men and women.
* Non-resident students make up a much larger share at graduate level, especially among men (17%).

---

## How to Run

1. **MySQL:** copy `Dataset - 2021.csv` into MySQL's secure upload folder (the script uses `C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/`; change the path if yours differs), then run `database.sql`.
2. **Tableau:** open `College Enrollment Tableau Workbook.twb`. It connects to MySQL on `localhost:3306`, database `uni_demo`; enter your own MySQL username and password when asked.
3. Open the **Man Story** and **Woman Story** tabs.

---

## Limitations

* Level codes are numeric and their full meaning is not documented in this repository; only codes 1, 2 and 12 are interpreted above
* Check that each Tableau view filters to one level code, to avoid counting students more than once
* Data source: Kaggle (link *to be added*)

---

## Tools

MySQL, Tableau, Python (pandas, for the figures above)

## License

Apache License 2.0 (see [LICENSE](LICENSE)).

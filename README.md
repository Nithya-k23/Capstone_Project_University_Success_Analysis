### Google Drive Link https://drive.google.com/file/d/1NcB2aoVxKWGYBaDsXQf4MSej-ka0dcMq/view?usp=sharing

# University_Success_Analysis
university success analysis  using powerBI, excel, SQL
## Overview
This project analyzes university rankings, performance, and country-level trends using Power BI, SQL, and Excel. The dataset includes six tables covering universities, rankings, and country information. Additional data on GDP and population are used for deeper insights. The analysis is structured into four categories based on the MECE framework:

- University Analysis

- Ranking System Analysis

- Performance Analysis

- Country-Level Analysis
  
## Significance
Understanding university performance metrics helps:
- Students make informed education choices
- Universities identify improvement areas
- Policymakers allocate resources effectively
- Researchers study education trends globally


## Data Samples

### University
| id | country_id | university_name |
|----|------------|------------------|
| 1  | 73         | Harvard University |
| 2  | 73         | Massachusetts Institute of Technology |
| 3  | 73         | Stanford University |
| 4  | 72         | University of Cambridge |
| 5  | 73         | California Institute of Technology |

### University_ranking_year
| university_id | ranking_criteria_id | year | Score |
|---------------|---------------------|------|-------|
| 1             | 1                   | 2011 | 100   |
| 5             | 1                   | 2011 | 98    |
| 2             | 1                   | 2011 | 98    |
| 3             | 1                   | 2011 | 98    |
| 6             | 1                   | 2011 | 91    |

### Country
| id | country_name |
|----|--------------|
| 1  | Argentina    |
| 2  | Australia    |
| 3  | Austria      |
| 4  | Bangladesh   |
| 5  | Belarus      |

### University_year
| university_id | year | num_students | student_staff_ratio | pct_international_students | pct_female_students |
|---------------|------|--------------|----------------------|----------------------------|---------------------|
| 1             | 2011 | 20152        | 8.9                  | 25                         | -                   |
| 5             | 2011 | 2243         | 6.9                  | 27                         | 33                  |
| 2             | 2011 | 11074        | 9.0                  | 33                         | 37                  |

### Ranking_Criteria
| id | ranking_system_id | criteria_name |
|----|-------------------|---------------|
| 1  | 1                 | Teaching      |
| 2  | 1                 | International |
| 3  | 1                 | Research      |
| 4  | 1                 | Citations     |

### Ranking_System
| id | system_name |
|----|-------------|
| 1  | Times Higher Education World University Ranking |
| 2  | Shanghai Ranking |
| 3  | Center for World University Rankings |

### Additional Tables

#### gdp_data
| country_id | gdp  |
|------------|------|
| 1          | 641.1 |
| 2          | 1693.96 |
| 3          | 526.18 |

#### population
| country_id | population_millions |
|------------|---------------------|
| 1          | 45.69               |
| 2          | 26.7                |
| 3          | 9.1                 |


## Data Dictionary
The analysis uses **six primary tables** with additional tables for country-level GDP and population data:

### **Primary Tables**
#### **1. University**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the university. |
| country_id | INT | Foreign key referencing the country table. |
| university_name | STRING | Name of the university. |

#### **2. University_ranking_year**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| university_id | INT | Unique identifier for the university. |
| ranking_criteria_id | INT | Unique identifier for the ranking criteria. |
| year | INT | Year of the ranking. |
| Score | DECIMAL | Score assigned to the university based on the ranking criteria. |

#### **3. University_year**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| university_id | INT | Foreign key referencing the university table. |
| year | INT | Year of data collection. |
| num_students | INT | Total number of students enrolled in the university. |
| student_staff_ratio | DECIMAL | Ratio of students to academic staff. |
| pct_international_students | DECIMAL | Percentage of international students. |
| pct_female_students | DECIMAL | Percentage of female students. |

#### **4. Country**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the country. |
| country_name | STRING | Name of the country. |

#### **5. Ranking_Criteria**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the ranking criteria. |
| ranking_system_id | INT | Foreign key referencing the ranking system table. |
| criteria_name | STRING | Name of the ranking criteria (e.g., research output, employability). |

#### **6. Ranking_System**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the ranking system. |
| system_name | STRING | Name of the ranking system (e.g., QS, Times Higher Education). |

### **Additional Tables**
#### **7. GDP Data**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| country_id | INT | Unique identifier of the country. |
| gdp | DECIMAL | GDP of each country. |

#### **8. Population Data**
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| country_id | INT | Unique identifier of the country. |
| population_millions | DECIMAL | Population of each country (in millions). |



## MECE Analysis Framework
![MECE](https://github.com/user-attachments/assets/293c8715-0c0e-476b-b708-75af5eee2726)

### 1. University Analysis

- University Demographics
- University Size & Composition
- University Growth Trends

### 2. Ranking System Analysis

- Ranking Methodologies
- Ranking Criteria Impact
- Ranking Trends Over Time

### 3. Performance Metrics

- Research & Citation Performance
- Teaching Excellence
- Internationalization & Financial Strength

## Key Performance Indicators (KPIs)

### 1. Average Student-Staff Ratio
![image](https://github.com/user-attachments/assets/4e58b631-7bf0-4aca-9bea-33a8a78e9ff9)


---

### 2. Total International Students
![image](https://github.com/user-attachments/assets/bac4e44f-de80-411e-a627-e3a24ce35a23)



---

### 3. Total Female Students
![image](https://github.com/user-attachments/assets/ba121fe2-3cda-4c58-a518-0f09a4a48d8f)

 

---

### 4. Average Ranking Score
![image](https://github.com/user-attachments/assets/f71de42c-f247-488f-81ec-6302c7b3d60e)


---

### 5. Total Students
![image](https://github.com/user-attachments/assets/84165578-f6cf-4035-a8e2-67d2054afcf1)

---


## Exploratory Data Analysis (EDA) in Excel
EDA was performed using SQL queries, and results were visualized in Excel. Below are the steps for each question:



### 1. Is there a correlation between a country's GDP and the number of universities?
**Objective:** To analyze if countries with higher GDP tend to have more universities.

#### SQL Query:
```sql
SELECT c.country_name,COUNT(u.id) AS num_universities,g.gdp
FROM 
university u JOIN country c 
ON u.country_id = c.id
LEFT JOIN gdp_data g 
ON c.id = g.country_id
GROUP BY 
c.country_name, g.gdp;

```
#### Chart Creation (Scatter Plot):
1. Insert the SQL query output into an Excel sheet.
2. Select the `gdp` and `num_universities` columns.
3. Go to **Insert** > **Scatter Plot**.
4. Format the chart with title: *"GDP vs Number of Universities"*.

---

### 2. How has the number of universities changed over the years in each country?
**Objective:** To identify trends in university growth over time.

#### SQL Query:
```sql
SELECT c.country_name,uy.year, COUNT(DISTINCT uy.university_id) AS num_universities
FROM university_year uy INNER JOIN university u 
ON uy.university_id = u.id
INNER JOIN country c 
ON u.country_id = c.id
GROUP BY c.country_name,uy.year
ORDER BY c.country_name,uy.year;
```
#### Chart Creation (Line Chart):
1. Insert the output data into an Excel sheet.
2. Select `year` and `num_universities` columns.
3. Go to **Insert** > **Line Chart**.
4. Add country-wise filters using slicers.
5. Set title: *"Number of Universities Over Time by Country"*.

---

### 3. Is there a relationship between a country's population and the number of universities?
**Objective:** To check if countries with higher population have more universities.

#### SQL Query:
```sql
SELECT c.country_name, p.population_millions, COUNT(u.id) AS num_universities
FROM country c INNER JOIN population p ON c.id = p.country_id
INNER JOIN university u 
ON c.id = u.country_id
GROUP BY c.country_name, p.population_millions;
```
#### Chart Creation (Scatter Plot):
1. Insert the query output into an Excel sheet.
2. Select `population_millions` and `num_universities`.
3. Go to **Insert** > **Scatter Plot**.
4. Set title: *"Population vs Number of Universities"*.

---

### 4. Are there any common criteria used by different ranking systems?
**Objective:** To find overlapping ranking criteria across different ranking systems.

#### SQL Query:
```sql
SELECT criteria_name, COUNT(DISTINCT ranking_system_id) num_ranking_system
FROM ranking_criteria
GROUP BY criteria_name;
```
#### Chart Creation (Bar Chart):
1. Insert the query output into an Excel sheet.
2. Select `criteria_name` and `num_ranking_systems`.
3. Go to **Insert** > **Bar Chart**.
4. Set title: *"Common Criteria Across Ranking Systems"*.

---

### 5. What is the trend in university rankings over the years according to each system?
**Objective:** To observe ranking trends for universities over time.

#### SQL Query:
```sql
SELECT rs.system_name, ury.year, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
INNER JOIN ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY rs.system_name, ury.year
ORDER BY rs.system_name, ury.year;
```
#### Chart Creation (Line Chart):
1. Insert the output data into an Excel sheet.
2. Select `year` and `avg_score`.
3. Go to **Insert** > **Line Chart**.
4. Apply system name filters.
5. Set title: *"University Ranking Trend by System"*.

---

### 6. How does the choice of ranking system affect a university's international student enrollment?
**Objective:** To analyze if ranking systems influence international student preferences.

#### SQL Query:
```sql
SELECT rs.system_name, AVG(uy.num_students*uy.pct_international_students) AS avg_international_students
FROM university_year uy JOIN university u ON uy.university_id = u.id
JOIN university_ranking_year ury ON uy.university_id = ury.university_id AND uy.year = ury.year
JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
JOIN ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY rs.system_name;
```
#### Chart Creation (Pie Chart):
1. Insert the data into an Excel sheet.
2. Select `system_name` and `avg_pct_international`.
3. Go to **Insert** > **Pie Chart**.
4. Set title: *"Ranking System Influence on International Students"*.

---

### 7. Are there any criteria that have different weights in different ranking systems?
**Objective:** To check if ranking criteria have varied importance across systems.

#### SQL Query:
```sql
SELECT rs.system_name, rc.criteria_name, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
INNER JOIN ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY rs.system_name, rc.criteria_name
ORDER BY rs.system_name, rc.criteria_name,avg_score DESC;
```
#### Chart Creation (Treemap Chart):
1. Insert the output into an Excel sheet.
2. Select `criteria_name` and `weight_count`.
3. Go to **Insert** > **Treemap Chart**.
4. Set title: *"Ranking Criteria Weight Distribution"*.

---


### 8. Change in Ranking Criteria Weights Over Time
**Objective:** Examine how ranking weightage evolved.

```sql
SELECT rc.criteria_name, ury.year, AVG(ury.score) AS avg_weight
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
GROUP BY rc.criteria_name, ury.year
ORDER BY rc.criteria_name ury.year;
```

**Chart Type:** Line Chart
- Insert a **Line Chart** in Excel with Year on X-axis and Average Weight on Y-axis.

---

### 9. Relationship between University Score and Student-Staff Ratio
**Objective:** Check if universities with higher scores have better student-staff ratios.

```sql
SELECT  u.university_name, AVG(uy.student_staff_ratio) Avg_Student_Staff_Ratio, AVG(ury.score) Avg_Score
FROM university_year uy INNER JOIN university_ranking_year ury 
ON uy.university_id = ury.university_id AND uy.year = ury.year
INNER JOIN university u ON ury.university_id = u.id
GROUP BY  1;
```

**Chart Type:** Scatter Plot
- Insert a **Scatter Plot Chart** in Excel with Score on X-axis and Student-Staff Ratio on Y-axis.

---

### 10. Distribution of Female Students Across Universities
**Objective:** Understand gender distribution in universities.

```sql
SELECT u.university_name, AVG(uy.num_students*uy.pct_female_students) Avg_Female_Students
FROM university_year uy INNER JOIN university u ON uy.university_id = u.id
GROUP BY u.university_name
ORDER BY u.university_name;
```

**Chart Type:** Column Chart
- Insert a **Column Chart** in Excel with University ID on X-axis and Percentage of Female Students on Y-axis.

---

### 11. Distribution of Universities Across Different Countries
**Objective:** Examine university distribution globally.

```sql
SELECT c.country_name, COUNT(u.id) AS num_universities
FROM country c INNER JOIN university u ON c.id = u.country_id
GROUP BY c.country_name
ORDER BY num_universities DESC;
```

**Chart Type:** Map Chart
- Insert a **Map Chart** in Excel with Country as Location and University Count as Values.

---

### 12. Changes in University Rankings Over the Years
**Objective:** Track university ranking evolution.

```sql
SELECT DISTINCT u.university_name,ury.year, 
AVG(ury.score) OVER (PARTITION BY u.university_name,ury.year ORDER BY ury.year) Avg_score
FROM university_ranking_year ury INNER JOIN university u 
ON ury.university_id = u.id;
  
```

**Chart Type:** Column Chart with Slicer
- Insert a **Column Chart** with University Name Slicer in Excel.

---

### 13. Trend in Percentage of Female Students Over Time
**Objective:** Observe changes in female student enrollment.

```sql
SELECT uy.year, AVG(uy.pct_female_students) AS avg_female_students
FROM university_year uy
GROUP BY uy.year;
```

**Chart Type:** Area Chart
- Insert an **Area Chart** in Excel with Year on X-axis and Average Female Percentage on Y-axis.

---

### 14. Evolution of University Ranking Scores Over Time
**Objective:** Study how scores fluctuate over time.

```sql
SELECT ury.year, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
GROUP BY ury.year
ORDER BY ury.year;
```

**Chart Type:** Line Chart
- Insert a **Line Chart** in Excel with Year on X-axis and Average Score on Y-axis.

---

### 15. Relationship between University Ranking Score and Student Count
**Objective:** Assess if student count affects ranking score.

```sql
SELECT u.university_name, AVG(uy.num_students) Avg_Num_Students, AVG(ury.score) Avg_Score
FROM university_year uy INNER JOIN university_ranking_year ury ON uy.university_id = ury.university_id AND uy.year = ury.year
INNER JOIN university u ON ury.university_id = u.id
GROUP BY u.university_name;
```

**Chart Type:** Scatter Plot
- Insert a **Scatter Plot Chart** in Excel with Student Count on X-axis and Score on Y-axis.

---

## Power BI Analysis

This section contains Power BI visualizations created using CSV files from the GitHub repository.
Each question includes its **Objective**, **Steps to Create Visuals**, and the **Visualization Type** used in Power BI.

---

## 1. How many universities are there in each country?

**Objective:** Identify the number of universities in each country.

**Steps to Create Visual in Power BI:**
1. Load the `University` table.
2. Create a **Bar Chart** visualization.
3. Set `country_name` from the `Country` table as the X-axis.
4. Set `university_id` as the Y-axis (Count Distinct).
5. Apply appropriate sorting and formatting.

**Visualization Type:** Bar Chart

---

## 2. What is the distribution of international students across different countries?

**Objective:** Understand how international students are distributed by country.

**Steps to Create Visual in Power BI:**
1. Load the `University_year` and `Country` tables.
2. Create a **Map Visualization**.
3. Use `country_name` as the location field.
4. Use `pct_international_students` as the measure.
5. Adjust color scale for better visualization.

**Visualization Type:** Map Chart

---

## 3. Which country has the highest number of female students enrolled in universities?

**Objective:** Determine the country with the most female students.

**Steps to Create Visual in Power BI:**
1. Load `University_year` and `Country` tables.
2. Create a **Table Visualization**.
3. Add `country_name` as a column.
4. Add `SUM(pct_female_students * num_students / 100)` to get the total female students per country.
5. Sort in descending order.

**Visualization Type:** Table

---

## 4. How many universities are ranked by each ranking system?

**Objective:** Analyze the number of universities ranked by different ranking systems.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `Ranking_System` tables.
2. Create a **Column Chart**.
3. Use `system_name` as the X-axis.
4. Use `university_id` as the Y-axis (Count Distinct).
5. Format labels and adjust visualization settings.

**Visualization Type:** Column Chart

---

## 5. What is the average score for universities according to each ranking system?

**Objective:** Compare the average ranking scores across ranking systems.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `Ranking_System` tables.
2. Create a **Bar Chart**.
3. Use `system_name` as the X-axis.
4. Use `AVG(Score)` as the Y-axis.
5. Format the visualization accordingly.

**Visualization Type:** Bar Chart

---

## 6. How does the ranking system affect a university's student-staff ratio?

**Objective:** Determine if different ranking systems have an impact on student-staff ratios.

**Steps to Create Visual in Power BI:**
1. Load `University_year`, `University_ranking_year`, and `Ranking_System` tables.
2. Create a **Donut Chart**.
3. Use `system_name` as the legend.
4. Use `AVG(student_staff_ratio)` as the measure.
5. Apply appropriate data labels and formatting.

**Visualization Type:** Donut Chart

---

## 7. What are the most important criteria considered by ranking systems?

**Objective:** Identify the criteria that ranking systems prioritize.

**Steps to Create Visual in Power BI:**
1. Load `Ranking_Criteria` and `Ranking_System` tables.
2. Create a **Treemap Visualization**.
3. Use `criteria_name` as the category.
4. Use `COUNT(criteria_name)` as the size metric.
5. Adjust formatting for clarity.

**Visualization Type:** Treemap

---

## 8. Is there a correlation between a university's score and the number of international students?

**Objective:** Analyze the relationship between score and international students.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot**.
3. Use `Score` on the X-axis.
4. Use `pct_international_students` on the Y-axis.
5. Adjust size/color coding for better interpretation.

**Visualization Type:** Scatter Plot

---

## 9. How does the percentage of female students impact a university's ranking?

**Objective:** Examine the relationship between female student percentage and ranking score.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot**.
3. Use `pct_female_students` on the X-axis.
4. Use `Score` on the Y-axis.
5. Adjust formatting and labels.

**Visualization Type:** Scatter Plot

---

## 10. Which university has the highest number of students?

**Objective:** Identify the university with the largest student population.

**Steps to Create Visual in Power BI:**
1. Load `University_year` and `University` tables.
2. Create a **Column Chart**.
3. Use `university_name` as the X-axis.
4. Use `num_students` as the Y-axis.
5. Sort in descending order.

**Visualization Type:** Column Chart

---
### 11. How does the percentage of international students vary across different universities?
**Objective:** To analyze the variation in the percentage of international students across universities.

**Steps:**
1. Import the `University_year` table.
2. Create an **Area Chart** visualization.
3. Set the **X-axis** to `university_name`.
4. Set the **Y-axis** to `pct_international_students`.
5. Apply filters if needed to analyze specific universities or years.
6. Customize the chart title and labels: **"Percentage of International Students by University"**.

---

### 12. Is there a correlation between a university's ranking and its student-staff ratio?
**Objective:** To determine if there is a relationship between university ranking scores and the student-staff ratio.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Score` (from University_ranking_year).
4. Set the **Y-axis** to `student_staff_ratio` (from University_year).
5. Use `university_name` as the legend or tooltip.
6. Customize the title: **"Correlation Between Ranking Score and Student-Staff Ratio"**.

---

### 13. How does the number of students in universities change over time?
**Objective:** To analyze trends in student enrollment over the years.

**Steps:**
1. Import the `University_year` table.
2. Create a **Line Chart** visualization.
3. Set the **X-axis** to `year`.
4. Set the **Y-axis** to `num_students`.
5. Use `university_name` as a legend for university-wise analysis.
6. Customize the title: **"Trend of Student Enrollment Over Time"**.

---

### 14. Is there a correlation between a university's ranking score and the student-staff ratio over the years?
**Objective:** To evaluate if ranking scores and student-staff ratios are related over time.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Score` (from University_ranking_year).
4. Set the **Y-axis** to `student_staff_ratio` (from University_year).
5. Use `year` as the legend to track trends.
6. Customize the title: **"Ranking Score vs. Student-Staff Ratio Over Years"**.

---

### 15. How does the percentage of international students vary across different years?
**Objective:** To observe the trends in international student percentages over time.

**Steps:**
1. Import the `University_year` table.
2. Create an **Area Chart** visualization.
3. Set the **X-axis** to `year`.
4. Set the **Y-axis** to `pct_international_students`.
5. Use `university_name` as a legend for university-specific trends.
6. Customize the title: **"Percentage of International Students Over Years"**.

---

### 16. What is the impact of a university's ranking on the number of international students it attracts?
**Objective:** To analyze whether higher-ranking universities attract more international students.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Combo Chart (Line & Column)** visualization.
3. Set the **X-axis** to `university_name`.
4. Set the **Line Values** to `Score` (ranking score).
5. Set the **Column Values** to `pct_international_students`.
6. Customize the title: **"Impact of Ranking on International Student Enrollment"**.

---

### 17. Is there a relationship between a university's ranking score and the percentage of female students enrolled?
**Objective:** To explore if ranking scores correlate with female student enrollment.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Score` (from University_ranking_year).
4. Set the **Y-axis** to `pct_female_students` (from University_year).
5. Use `university_name` as a legend.
6. Customize the title: **"Ranking Score vs. Female Student Enrollment"**.

---

### 18. How does the percentage of international students affect a university's student-staff ratio?
**Objective:** To analyze if universities with more international students have different student-staff ratios.

**Steps:**
1. Import `University_year` table.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `pct_international_students`.
4. Set the **Y-axis** to `student_staff_ratio`.
5. Use `university_name` as a legend or tooltip.
6. Customize the title: **"International Students vs. Student-Staff Ratio"**.
```



- **Excel Visualizations:** Contains charts and pivot tables created from SQL query results.
- **Power BI Dashboards:** Includes Power BI files with all visualizations.
- **Readme Documentation:** Provides an overview of the analysis, steps, and objectives.
```


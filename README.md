# Google Drive Link https://drive.google.com/file/d/1NcB2aoVxKWGYBaDsXQf4MSej-ka0dcMq/view?usp=sharing

# Capstone Project - University Success Analysis
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
Contains basic details about universities.
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the university. |
| country_id | INT | Foreign key referencing the country table. |
| university_name | STRING | Name of the university. |

#### **2. University_ranking_year**
Stores yearly university ranking scores based on different ranking criteria.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| university_id | INT | Unique identifier for the university. |
| ranking_criteria_id | INT | Unique identifier for the ranking criteria. |
| year | INT | Year of the ranking. |
| Score | DECIMAL | Score assigned to the university based on the ranking criteria. |

#### **3. University_year**
Records yearly university statistics related to student demographics and staff ratios.
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| university_id | INT | Foreign key referencing the university table. |
| year | INT | Year of data collection. |
| num_students | INT | Total number of students enrolled in the university. |
| student_staff_ratio | DECIMAL | Ratio of students to academic staff. |
| pct_international_students | DECIMAL | Percentage of international students. |
| pct_female_students | DECIMAL | Percentage of female students. |

#### **4. Country**
Stores details about different countries.
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the country. |
| country_name | STRING | Name of the country. |

#### **5. Ranking_Criteria**
Defines the criteria used for ranking universities.
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the ranking criteria. |
| ranking_system_id | INT | Foreign key referencing the ranking system table. |
| criteria_name | STRING | Name of the ranking criteria (e.g., research output, employability). |

#### **6. Ranking_System**
Contains information about different university ranking systems.
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier for the ranking system. |
| system_name | STRING | Name of the ranking system (e.g., QS, Times Higher Education). |

### **Additional Tables**
#### **7. GDP Data**
Stores details about different countries GDP.
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| country_id | INT | Unique identifier of the country. |
| gdp | DECIMAL | GDP of each country. |

#### **8. Population Data**
Stores details about different countries Population.
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
4. Format the chart with title: *"Correlation Between GDP and Number of Universities"*.


![image](https://github.com/user-attachments/assets/e9b67026-e7f3-4adb-8d16-cc6392a2a365)



#### Insight: The chart likely shows a positive correlation between GDP and the number of universities. Countries with higher GDP tend to have more universities.
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
5. Set title: *"Trend of Universities Over the Years"*.



![image](https://github.com/user-attachments/assets/aa54a47f-286b-4d02-b972-1c997320c90e)



#### Insight: The trend analysis shows that some countries experienced steady growth in the number of universities, while others, like Belgium, saw a decline after 2015.
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
4. Set title: *"Population v/s Num of Universities"*.



![image](https://github.com/user-attachments/assets/d73f0918-167d-49e9-a315-0bdf1b147335)



 #### Insight: The analysis indicates that while larger populations generally support more universities, some smaller countries also have a high number of universities due to strong investment in education.
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



![image](https://github.com/user-attachments/assets/c540fca6-211d-4bd4-b11c-4f4b93a21920)



#### Insight: Different ranking systems use unique criteria, leading to variations in university rankings. This makes direct comparisons difficult and highlights the need to understand each system’s methodology.
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
5. Set title: *"University Ranking Trends by System Over Time"*.


   
![image](https://github.com/user-attachments/assets/1b22b19c-9417-4567-a682-d7f9e77b2fd6)




#### Insight: Different ranking systems show varying trends over time, with CWUR experiencing a sharp rise around 2013,after that a sudden fall from 2015-2016, while Shanghai Ranking remains stable. This suggests changes in ranking methodologies or evaluation criteria impacting university scores.
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
4. Set title: *"International Students vs. Ranking System"*.



![image](https://github.com/user-attachments/assets/b758c663-94c8-4596-93f1-c54a00702743)




#### Insight: The distribution of international students is fairly balanced across ranking systems, with slight variations. The Shanghai Ranking has the highest percentage (34%), while Times Higher Education and Center for World University Rankings each have 33%. 
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
4. Set title: *"Weights of Criteria in Ranking systems"*.



![image](https://github.com/user-attachments/assets/507f0f5b-a2f1-4285-b148-593f5f753b9d)




#### Insight: The data shows that research output (Publications, Citations) and international factors are highly prioritized across ranking systems, while alumni-related criteria are less emphasized. Each system has unique focuses, with Times Higher Education emphasizing citations and total times, the shanghai for pub and the Center for World University Rankings highlighting publications and influence. 
---


### 8. Change in Ranking Criteria Weights Over Time
**Objective:** Examine how ranking weightage evolved.

#### SQL Query:
```sql
SELECT rc.criteria_name, ury.year, AVG(ury.score) AS avg_weight
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
GROUP BY rc.criteria_name, ury.year
ORDER BY rc.criteria_name ury.year;
```

#### Chart Creation (Line Chart):
1. Insert the output into an Excel sheet.
2. Select `year` and `avg_weight`.
3. Go to **Insert** > **Line Chart**.
4. Set title: *"Ranking Criteria Weights Over Time"*


![image](https://github.com/user-attachments/assets/b88d87a9-0f7e-4c88-8b09-5d5ae5732287)



#### Insight: Decreasing: Alumni importance is declining.Increasing: Citations, International factors, and Income are gaining weight, emphasizing research impact, global presence, and financial resources.Fluctuating but Rising: PCP, Research, and Teaching show growing emphasis.
---

### 9. Relationship between University Score and Student-Staff Ratio
**Objective:** Check if universities with higher scores have better student-staff ratios.

#### SQL Query:
```sql
SELECT  u.university_name, AVG(uy.student_staff_ratio) Avg_Student_Staff_Ratio, AVG(ury.score) Avg_Score
FROM university_year uy INNER JOIN university_ranking_year ury 
ON uy.university_id = ury.university_id AND uy.year = ury.year
INNER JOIN university u ON ury.university_id = u.id
GROUP BY  1;
```

#### Chart Creation(Scatter Plot):
1. Insert the output into an Excel sheet.
2. Select `Avg_student_staff_ratio` and `avg_score`.
3. Go to **Insert** > **Scatter Plot Chart**.
4. Set title: *"University Score vs. Student-Staff Ratio"*



![image](https://github.com/user-attachments/assets/85c21f9c-c355-414d-b353-0aacda8205f5)




#### Insight: There is a weak negative correlation between university scores and student-staff ratios, suggesting that universities with lower student-staff ratios tend to have slightly higher scores, but other factors also play a significant role in rankings.
---

### 10. Distribution of Female Students Across Universities
**Objective:** Understand gender distribution in universities.

#### SQL Query:
```sql
SELECT u.university_name, AVG(uy.num_students*uy.pct_female_students) Avg_Female_Students
FROM university_year uy INNER JOIN university u ON uy.university_id = u.id
GROUP BY u.university_name
ORDER BY u.university_name;
```

#### Chart Creation (Column Chart):
1. Insert the output into an Excel sheet.
2. Select `university_name` and `avg_female`.
3. Go to **Insert** > **Column Chart**.
4. Set title: *"Comparison of Female Student Enrollment Across Universities"*



![image](https://github.com/user-attachments/assets/a06a35e0-9c77-4b56-84da-19b324210bb8)




#### Insight: Female student enrollment varies significantly across universities, with some institutions attracting a higher proportion of female students(Alexandria University  with average female students (58618) and .Scuola normale(129) have least number of female students .
---

### 11. Distribution of Universities Across Different Countries
**Objective:** Examine university distribution globally.

#### SQL Query:
```sql
SELECT c.country_name, COUNT(u.id) AS num_universities
FROM country c INNER JOIN university u ON c.id = u.country_id
GROUP BY c.country_name
ORDER BY num_universities DESC;
```

#### Chart Creation (Map Chart):
1. Insert the output into an Excel sheet.
2. Select `country_name` and `num_universities`.
3. Go to **Insert** > **Map Chart**.
4. Set title: *"University Distribution by Country"*.



![image](https://github.com/user-attachments/assets/d04382b6-9d6b-44db-8cf2-6dc4a24cd93d)




#### Insight: The United States leads in university representation with 273 universities, followed by China (96) and the United Kingdom (89). Developed countries dominate global rankings, while emerging economies like Brazil (27) and India (22) also have a presence but at lower numbers.Some Countries have only one university(11 countries).
---

### 12. Changes in University Rankings Over the Years
**Objective:** Track university ranking evolution.

#### SQL Query:
```sql
SELECT DISTINCT u.university_name,ury.year, 
AVG(ury.score) OVER (PARTITION BY u.university_name,ury.year ORDER BY ury.year) Avg_score
FROM university_ranking_year ury INNER JOIN university u 
ON ury.university_id = u.id;
  
```

#### Chart Creation (Column Chart with Slicer):
1. Insert the output into an Excel sheet.
2. Select `year` and `avg_score`.
3. Go to **Insert** > **Column Chart**.
4. Set title: *"Universities Trend Over Years"*.



![image](https://github.com/user-attachments/assets/8934df43-3df3-4fbc-b08d-0792bb873ec8)



#### Insight: University rankings have fluctuated over the years. Alexandria University saw the highest rise in 2014, gaining 510.33 points, while the University of Trento faced the steepest decline in 2016, losing 384.08 points. Scores remained stable from 2005 to 2010, peaked in 2014-2015, and dropped sharply in 2016, likely due to changes in ranking methodologies or stricter evaluation criteria.
---

### 13. Trend in Percentage of Female Students Over Time
**Objective:** Observe changes in female student enrollment.

#### SQL Query:
```sql
SELECT uy.year, AVG(uy.pct_female_students) AS avg_female_students
FROM university_year uy
GROUP BY uy.year;
```

#### Chart Creation (Area Chart):
1. Insert the output into an Excel sheet.
2. Select `year` and `avg_femal_student`.
3. Go to **Insert** > **Area Chart**.
4. Set title: *"Trend of Female Students Over Time"*.



![image](https://github.com/user-attachments/assets/a49dd3ba-37ca-462b-a1de-42d5ac3c4554)



#### Insight: Female student enrollment remained stable around 49%, with peaks at 50% in 2012 and 2016, indicating minor fluctuations and possible policy influences on gender balance.
---

### 14. Evolution of University Ranking Scores Over Time
**Objective:** Study how scores fluctuate over time.

#### SQL Query:
```sql
SELECT ury.year, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
GROUP BY ury.year
ORDER BY ury.year;
```

#### Chart Creation (Line Chart):
1. Insert the output into an Excel sheet.
2. Select `year` and `avg_score`.
3. Go to **Insert** >**Line Chart**.
4. Set title: *"Average University Ranking Score Over the Years"*.



![image](https://github.com/user-attachments/assets/b115cebc-ebbd-4e01-bcb7-683e598ed571)



#### Insight: There was a sudden spike in the average university ranking score between 2013 and 2015, followed by a sharp decline in 2016. 
---

### 15. Relationship between University Ranking Score and Student Count
**Objective:** Assess if student count affects ranking score.

#### SQL Query:
```sql
SELECT u.university_name, AVG(uy.num_students) Avg_Num_Students, AVG(ury.score) Avg_Score
FROM university_year uy INNER JOIN university_ranking_year ury ON uy.university_id = ury.university_id AND uy.year = ury.year
INNER JOIN university u ON ury.university_id = u.id
GROUP BY u.university_name;
```

#### Chart Creation (Scatter Plot):
1. Insert the output into an Excel sheet.
2. Select `avg_num_students` and `avg_score`.
3. Go to **Insert** >**Scatter Plot**.
4. Set title: *"University Ranking Score vs. Total Students"*.

   
![image](https://github.com/user-attachments/assets/97079418-d54e-43b9-97c8-7edca7a5966c)



#### Insight: There is a weak negative correlation (-0.28) between ranking score and the number of students. This suggests that highly ranked universities tend to have fewer students, likely due to selective admissions and research focus.
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
3. set from the `Country` table as the X-axis.
4. Set `university_id` as the Y-axis (Count Distinct).
5. Apply appropriate sorting and formatting.
6. Customize the title: **"number of universities by country"**.



![image](https://github.com/user-attachments/assets/9b76cb88-525f-4498-93bc-cdc2b01775d1)



#### Insight: The United States leads in female student enrollment with 5.1 million, followed by the United Kingdom (1.6M) and Germany (1.0M). 

---

## 2. What is the distribution of international students across different countries?

**Objective:** Understand how international students are distributed by country.

**Steps to Create Visual in Power BI:**
1. Load the `University_year` and `Country` tables.
2. Create a **Map Visualization**.
3. Use `country_name` as the location field.
4. Use `pct_international_students` as the measure.
5. Adjust color scale for better visualization.
6. Customize the title: **"Total of International Students By Country"**.



![image](https://github.com/user-attachments/assets/e8499615-b598-4e76-a328-9983dd55799e)



#### Insight: The map visualization shows that the highest concentration of international students is in North America, Europe, and Australia, with relatively fewer in Egypt ,Italy.
---

## 3. Which country has the highest number of female students enrolled in universities?

**Objective:** Determine the country with the most female students.

**Steps to Create Visual in Power BI:**
1. Load `University_year` and `Country` tables.
2. Create a **Table Visualization**.
3. Add `country_name` as a column.
4. Add `SUM(pct_female_students * num_students)` to get the total female students per country.
5. Sort in descending order.
6. Customize the title: **"Female students by country"**.



![image](https://github.com/user-attachments/assets/e205e313-5136-45a6-992e-37c70791cefb)



#### Insight: The United States leads in female student enrollment with 5.1 million, followed by the United Kingdom (1.6M) and Germany (1.0M).
---

## 4. How many universities are ranked by each ranking system?

**Objective:** Analyze the number of universities ranked by different ranking systems.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `Ranking_System` tables.
2. Create a **Column Chart**.
3. Use `system name` as the X-axis.
4. Use `total university` as the Y-axis (Count Distinct).
5. Format labels and adjust visualization settings.
6. Customize the title: **"Universities Ranked by Each Ranking System"**.



![image](https://github.com/user-attachments/assets/8b20c668-2d20-45d5-8099-10e264be70fb)




#### Insight: The chart reveals that the Center for World University Rankings (CWUR) ranks the highest number of universities (1,024), significantly more than the Times Higher Education (THE) Ranking (245) and the Shanghai Ranking (93). 

---

## 5. What is the average score for universities according to each ranking system?

**Objective:** Compare the average ranking scores across ranking systems.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `Ranking_System` tables.
2. Create a **Bar Chart**.
3. Use `AVG Score` as the X-axis.
4. Use `system_name` as the Y-axis.
5. Format the visualization accordingly.
6. Customize the title: **"Average University Score By Ranking System"**.




![image](https://github.com/user-attachments/assets/b057c2e4-aa41-4dc0-8cf7-8d5abb4caac8)



#### Insight: The Center for World University Rankings (CWUR) assigns significantly higher average scores (328) compared to Times Higher Education (THE) (59) and Shanghai Rankings (35). 
---

## 6. How does the ranking system affect a university's student-staff ratio?

**Objective:** Determine if different ranking systems have an impact on student-staff ratios.

**Steps to Create Visual in Power BI:**
1. Load `University_year`, `University_ranking_year`, and `Ranking_System` tables.
2. Create a **Donut Chart**.
3. Use `Ranking System` as the legend.
4. Use `AVG(student_staff_ratio)` as the measure.
5. Apply appropriate data labels and formatting.
6. Customize the title: **"Impact of Ranking System on Student Staff Ratio"**.


![image](https://github.com/user-attachments/assets/2fa1f08a-9e56-455b-85cc-6a0385246122)




#### Insight: The Times Higher Education (THE) ranking system reports the highest average student-staff ratio (15.708), while the Shanghai Ranking (15.462) and Center for World University Rankings (CWUR) (14.462) report slightly lower ratios.

---

## 7. What are the most important criteria considered by ranking systems?

**Objective:** Identify the criteria that ranking systems prioritize.

**Steps to Create Visual in Power BI:**
1. Load `Ranking_Criteria` and `Ranking_System` tables.
2. Create a **Treemap Visualization**.
3. Use `sydtem name` as the category.
4. Use `criteria_name` as the details.
5. Use `average score` as the value
6. Adjust formatting for clarity.
7. Customize the title: **"Importance of Ranking Criteria Across Ranking Systems"**.



![image](https://github.com/user-attachments/assets/3dc69100-bb89-4acd-8cbb-bc677413532c)




#### Insight: The Center for World University Rankings (CWUR) places the most emphasis on publications ranking  (459.1),Then influence and less impact on total CWUR(47.77). Times Higher Education focuses on citations(76.83), while the Shanghai Ranking considers pub (54.01). 

---

## 8. Is there a correlation between a university's score and the number of international students?

**Objective:** Analyze the relationship between score and international students.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot**.
3. Use `Avg Score` on the X-axis.
4. Use `total international students` on the Y-axis.
5. Adjust size/color coding for better interpretation.
6. Customize the title: **"Scores v/s International Students"**.



![image](https://github.com/user-attachments/assets/8edd580d-7e4b-4fd6-aaa9-a82ceef80fd7)



#### Insight: The scatter plot suggests an inverse correlation between university scores and the number of international students. 


---

## 9. How does the percentage of female students impact a university's ranking?

**Objective:** Examine the relationship between female student percentage and ranking score.

**Steps to Create Visual in Power BI:**
1. Load `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot**.
3. Use `avg % of female students` on the X-axis.
4. Use `avg Score` on the Y-axis.
5. Adjust formatting and labels.
6. Customize the title: **"Impact Of Female Student Percentage On University Ranking Score"**.



![image](https://github.com/user-attachments/assets/c4b26030-e394-43a4-91a1-34b6ea33d7bd)



#### Insight: The analysis reveals a weak negative correlation between the percentage of female students and university ranking scores. While universities with a higher proportion of female students tend to have slightly lower ranking scores.
---

## 10. Which university has the highest number of students?

**Objective:** Identify the university with the largest student population.

**Steps to Create Visual in Power BI:**
1. Load `University_year` and `University` tables.
2. Create a **Column Chart**.
3. Use `university name` as the X-axis.
4. Use `sum of students` as the Y-axis.
5. Sort in descending order.
6. Customize the chart title and labels: **"Top University With Max Number of Students"**.


![image](https://github.com/user-attachments/assets/12923a03-1a86-4568-bf2a-dce338aedc46)



#### Insight: Arizona State University has the highest student enrollment, totaling 499,416. 


---
### 11. How does the percentage of international students vary across different universities?
**Objective:** To analyze the variation in the percentage of international students across universities.

**Steps:**
1. Import the `University_year` table.
2. Create an **Area Chart** visualization.
3. Set the **X-axis** to `university name`.
4. Set the **Y-axis** to `avg international students`.
5. Apply filters if needed to analyze specific universities or years.
6. Customize the chart title and labels: **"Trend Of International Student % per University"**.


![image](https://github.com/user-attachments/assets/9dd57d92-c529-4b4c-8e14-3c5d85dcb5b5)



#### Insight: The trend shows that some universities have a significantly higher percentage of international students, with the highest reaching 54%. 
---

### 12. Is there a correlation between a university's ranking and its student-staff ratio?
**Objective:** To determine if there is a relationship between university ranking scores and the student-staff ratio.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Average Score` (from University_ranking_year).
4. Set the **Y-axis** to ` Avg student_staff_ratio` (from University_year).
5. Use `university_name` as the legend or tooltip.
6. Customize the title: **"Correlation Between University Ranking Score And Students Staff Ratio"**.


![image](https://github.com/user-attachments/assets/2ceacc55-7058-45ea-97ff-66130f2a1f17)



#### Insight: The scatter plot suggests a weak positive correlation between the average score and the student-staff ratio. This means that universities with higher rankings (higher scores) tend to have a slightly higher student-staff ratio.
---

### 13. How does the number of students in universities change over time?
**Objective:** To analyze trends in student enrollment over the years.

**Steps:**
1. Import the `University_year` table.
2. Create a **Line Chart** visualization.
3. Set the **X-axis** to `year`.
4. Set the **Y-axis** to `Total Students`.
5. Use `university_name` as a legend for university-wise analysis.
6. Customize the title: **"Trend Of Total Student Over Time"**.


![image](https://github.com/user-attachments/assets/17ae1d42-c78b-48af-9c61-1bc9c2747b70)



#### Insight: The total number of students showed steady growth from 2011 to 2015, peaking at 4.7 million. However, 2016 saw a sharp decline to 2.75 million.
---

### 14. Is there a correlation between a university's ranking score and the student-staff ratio over the years?
**Objective:** To evaluate if ranking scores and student-staff ratios are related over time.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Average Score` (from University_ranking_year).
4. Set the **Y-axis** to `Average student staff ratio` (from University_year).
5. Use `year` as the legend to track trends.
6. Customize the title: **"Correlation Between Ranking Score & Student-Staff Ratio Over Years"**.



![image](https://github.com/user-attachments/assets/36c7587c-42d2-4835-9793-7dcb1f178e16)



#### Insight: The scatter plot indicates little to no correlation between ranking score and student-staff ratio. This suggests that ranking scores are influenced by multiple factors beyond staffing levels.
---

### 15. How does the percentage of international students vary across different years?
**Objective:** To observe the trends in international student percentages over time.

**Steps:**
1. Import the `University_year` table.
2. Create an **Area Chart** visualization.
3. Set the **X-axis** to `year`.
4. Set the **Y-axis** to `avg international student(%)`.
5. Use `university_name` as a legend for university-specific trends.
6. Customize the title: **"Trend of International Student Enrollment By Year"**.


![image](https://github.com/user-attachments/assets/f69b4d8a-9a49-461a-b616-ec3257c721c7)



#### Insight: The percentage of international students showed steady growth until 2014, dipped in 2015, and then sharply increased in 2016. 

---

### 16. What is the impact of a university's ranking on the number of international students it attracts?
**Objective:** To analyze whether higher-ranking universities attract more international students.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Combo Chart (Line & Column)** visualization.
3. Set the **X-axis** to `university name`.
4. Set the **Line Values** to `Avg Ranking Score` (ranking score).
5. Set the **Column Values** to `Total International Students`.
6. Customize the title: **"Ranking Score vs. International Students"**.



![image](https://github.com/user-attachments/assets/01046763-a7a6-4598-9aa3-4d7465b9f821)




#### Insight: Higher-ranked universities do not always have the most international students, as seen with Monash University leading in enrollment despite a moderate ranking score.

---

### 17. Is there a relationship between a university's ranking score and the percentage of female students enrolled?
**Objective:** To explore if ranking scores correlate with female student enrollment.

**Steps:**
1. Import `University_ranking_year` and `University_year` tables.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Avg University Ranking Score` (from University_ranking_year).
4. Set the **Y-axis** to `Avg Of Female Students %` (from University_year).
5. Use `university_name` as a legend.
6. Customize the title: **"Correlation Between University Ranking Score and Percentage of Female Students"**.



![image](https://github.com/user-attachments/assets/0fddf1ce-6a35-488d-a939-6d0fcd1577ad)



   
#### Insight: Higher-ranked universities show a slight decline in female student percentages, indicating potential gender disparities. 
---

### 18. How does the percentage of international students affect a university's student-staff ratio?
**Objective:** To analyze if universities with more international students have different student-staff ratios.

**Steps:**
1. Import `University_year` table.
2. Create a **Scatter Plot** visualization.
3. Set the **X-axis** to `Average International Students`.
4. Set the **Y-axis** to `Average Student Staff Ratio`.
5. Use `university_name` as a legend or tooltip.
6. Customize the title: **"International Students vs. Student-Staff Ratio"**.



![image](https://github.com/user-attachments/assets/f2c28f78-2a0f-4965-b4b1-fceff969d086)



#### Insight: The weak negative correlation suggests that universities with more international students tend to have a slightly lower student-staff ratio. 

### 19.Are there any significant trends or patterns in the rankings of universities from different countries?
**Objective:** To find the trend in the  ranking of university from different coyntrues.

**Steps:**
1. Import `University_year` table.
2. Create a **Line Chart** visualization.
3. Set the **X-axis** to `year`.
4. Set the **Y-axis** to `avg_ranking_score_country`.
5. Use `country_name` as a legend or tooltip.
6. Customize the title: **"University Ranking Trends By Country**.



![image](https://github.com/user-attachments/assets/863c1501-0fc2-492d-8fcd-6f10af51a7b2)




#### Insight: The sharp rise and fall in ranking scores around 2013–2014 is the significant trend we can see here this suggest changes in ranking methodologies, policies, or competition.
---

## Country-Level Analysis Dashboard
This helps to analyse the university based on country level.




![image](https://github.com/user-attachments/assets/40613cee-0a44-44e5-b39c-2e92e3d8aaec)




## Perfomance Analysis Dashboard
This helps to analyse the university based on perfomance level.



![image](https://github.com/user-attachments/assets/52c6b481-fdc8-42e1-af10-686efacb99dd)




## Ranking System Dashboard
This helps to analyse the university based on various ranking system and criteria.



![image](https://github.com/user-attachments/assets/6964cbd7-6366-4937-9596-53d79aa49d8d)





## University Analysis Dashboard
This helps to analyse the university based on university level.



![image](https://github.com/user-attachments/assets/84782f95-6406-47b2-bc06-cf515e302a2b)





## Conclusion
This Power BI analysis provides valuable insights into university rankings, international student trends, student-staff ratios, and the effect of rankings on university demographics. These visualizations help stakeholders make data-driven decisions regarding university performance and student engagement.This project provides deep insights into university success factors, ranking systems, and country-level influences using SQL, Excel, and Power BI. The combination of SQL-based EDA and Power BI visualization offers a comprehensive analysis of university rankings and performance trends globally.


---

## Repository Contents
- **SQL Queries:** Contains all SQL scripts used for data extraction.
- **Excel Visualizations:** Contains charts and pivot tables created from SQL query results.
- **Power BI Dashboards:** Includes Power BI files with all visualizations.
- **MECE Breakdown:** Provides MECE Breakdown Of Capstone Project.
- **KPI:** Showing KPI'S used in this Project.
- **Data Dictionary:** Provides details pf all table used in this dataset.
- **Readme Documentation:** Provides an overview of the analysis, steps, and objectives.






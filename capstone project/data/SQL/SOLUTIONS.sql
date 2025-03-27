-- Is there a correlation between a country's GDP and the number of universities?
SELECT c.country_name,COUNT(u.id) AS num_universities,g.gdp
FROM 
    university u JOIN country c 
    ON u.country_id = c.id
	JOIN gdp_data g 
	ON c.id = g.country_id
GROUP BY 
    c.country_name, g.gdp


    
    
    
  -- 2.  How has the number of universities changed over the years in each country?									
SELECT c.country_name,uy.year, COUNT(DISTINCT uy.university_id) AS num_universities
FROM 
university_year uy INNER JOIN university u 
ON uy.university_id = u.id
INNER JOIN country c 
ON u.country_id = c.id
GROUP BY c.country_name,uy.year
ORDER BY c.country_name,uy.year;


-- 3 Is there a relationship between a country's population and the number of universities?
SELECT c.country_name, p.population_millions, COUNT(u.id) AS num_universities
FROM country c
INNER JOIN population p ON c.id = p.country_id
INNER JOIN university u 
ON c.id = u.country_id
GROUP BY c.country_name, p.population_millions;



-- 4. Are there any common criteria used by different ranking systems?									
SELECT criteria_name, COUNT(DISTINCT ranking_system_id) num_ranking_system
FROM 
	ranking_criteria
GROUP BY criteria_name



-- 5.What is the trend in university rankings over the years according to each system?									
SELECT rs.system_name, ury.year, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
INNER JOIN ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY rs.system_name, ury.year
ORDER BY rs.system_name, ury.year;

	
-- 6  How does the choice of ranking system affect a university's international student enrollment?									
SELECT rs.system_name, AVG(uy.num_students*uy.pct_international_students) AS avg_international_students
FROM university_year uy
JOIN university u ON uy.university_id = u.id
JOIN university_ranking_year ury ON uy.university_id = ury.university_id AND uy.year = ury.year
JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
JOIN ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY rs.system_name;






-- 7 Are there any criteria that have different weights in different ranking systems?
SELECT rc.criteria_name,COUNT(DISTINCT rc.ranking_system_id) AS num_systems
FROM ranking_criteria rc
INNER JOIN ranking_system rs 
ON rc.ranking_system_id = rs.id
GROUP BY rc.criteria_name, rs.system_name;

SELECT rs.system_name, rc.criteria_name, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
INNER JOIN ranking_system rs ON rc.ranking_system_id = rs.id
GROUP BY rs.system_name, rc.criteria_name
ORDER BY rs.system_name, rc.criteria_name,avg_score DESC;

-- 8. How have the weights of ranking criteria changed over time?
SELECT rc.criteria_name, ury.year, AVG(ury.score) AS avg_weight
FROM university_ranking_year ury
INNER JOIN ranking_criteria rc ON ury.ranking_criteria_id = rc.id
GROUP BY rc.criteria_name, ury.year
ORDER BY rc.criteria_name,ury.year;

-- 9 Is there a relationship between a university's score and the student-staff ratio?
SELECT  u.university_name, AVG(uy.student_staff_ratio) Avg_Student_Staff_Ratio, AVG(ury.score) Avg_Score
FROM university_year uy
INNER JOIN university_ranking_year ury 
ON uy.university_id = ury.university_id AND uy.year = ury.year
INNER JOIN university u
ON ury.university_id = u.id
GROUP BY  1;

-- 10 How does the number of female students differ among universities?
SELECT u.university_name, AVG(uy.num_students*uy.pct_female_students) Total_Female_Students
FROM university_year uy
INNER JOIN university u ON uy.university_id = u.id
GROUP BY u.university_name
ORDER BY u.university_name
;


-- 11 What is the distribution of universities across different countries?
SELECT c.country_name, COUNT(u.id) AS num_universities
FROM country c
INNER JOIN university u ON c.id = u.country_id
GROUP BY c.country_name
ORDER BY num_universities DESC;

-- 12 How has the ranking of universities changed over the years?
SELECT DISTINCT u.university_name,ury.year, 
AVG(ury.score) OVER (PARTITION BY u.university_name,ury.year ORDER BY ury.year) Avg_score
FROM university_ranking_year ury
INNER JOIN university u 
ON ury.university_id = u.id;

   -- OR---
   
SELECT u.university_name,ury.year, AVG(ury.score) Avg_Score
FROM university_ranking_year ury
INNER JOIN university u 
ON ury.university_id = u.id
GROUP BY u.university_name,ury.year
ORDER BY u.university_name,ury.year ;

-- 13 What is the trend in the percentage of female students over time?
SELECT uy.year, AVG(uy.pct_female_students) AS avg_female_students
FROM university_year uy
GROUP BY uy.year;

-- 14 How has the ranking score of universities evolved over the years?
SELECT ury.year, AVG(ury.score) AS avg_score
FROM university_ranking_year ury
GROUP BY ury.year
ORDER BY ury.year;

-- 15   Is there a relationship between a university's ranking score and the number of students over time?
SELECT u.university_name, AVG(uy.num_students) Avg_Num_Students, AVG(ury.score) Avg_Score
FROM university_year uy
INNER JOIN university_ranking_year ury ON uy.university_id = ury.university_id AND uy.year = ury.year
INNER JOIN university u 
ON ury.university_id = u.id
GROUP BY u.university_name;

									
									
									
									

-- replace null values in score with average of year  2011 and ranking criteria 5
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE  ranking_criteria_id= 5 AND year = 2011 and score IS NOT NULL
    ) AS temp_avg
)
WHERE  ranking_criteria_id= 5 AND year = 2011 AND score IS NULL;
SET SQL_SAFE_UPDATES =1;


-- replace null values in score with average of year  2012 and ranking criteria 5
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE  ranking_criteria_id= 5 AND year = 2012 and score IS NOT NULL
    ) AS temp_avg
)
WHERE ranking_criteria_id= 5 AND year = 2012 AND score IS NULL;
SET SQL_SAFE_UPDATES =1;


-- replace null values in score with average of year  2013 and ranking criteria 5
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE  ranking_criteria_id= 5 AND year = 2013 and score IS NOT NULL
    ) AS temp_avg
)
WHERE ranking_criteria_id= 5 AND year = 2013 AND score IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values in score with average of year  2014 and ranking criteria 5
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE  ranking_criteria_id= 5 AND year = 2014 and score IS NOT NULL
    ) AS temp_avg
)
WHERE ranking_criteria_id= 5 AND year = 2014 AND score IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values in score with average of year  2015 and ranking criteria 5
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE  ranking_criteria_id= 5 AND year = 2015 and score IS NOT NULL
    ) AS temp_avg
)
WHERE ranking_criteria_id= 5 AND year = 2015 AND score IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values in score with average of year  2016 and ranking criteria 5
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE  ranking_criteria_id= 5 AND year = 2016 and score IS NOT NULL
    ) AS temp_avg
)
WHERE ranking_criteria_id= 5 AND year = 2016 AND score IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values of score with average of score
SET SQL_SAFE_UPDATES =0;
UPDATE university_ranking_year 
SET score = (
    SELECT * FROM (
        SELECT AVG(score) FROM university_ranking_year WHERE score IS NOT NULL
    ) AS temp_avg
)
WHERE score IS NULL;
SET SQL_SAFE_UPDATES =1;




-- replace null values of pct_female_students column with average pct_female_students in the year 2011
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE year = 2011 AND pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE year = 2011 AND  pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;




-- replace null values of pct_female_students column with average pct_female_students in the year 2012
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE year = 2012 AND pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE  year = 2012 AND pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;


-- replace null values of pct_female_students column with average pct_female_students in the year 2013
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE year = 2013 AND pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE  year = 2013 AND pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values of pct_female_students column with average pct_female_students in the year 2014
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE year = 2014 AND pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE  year = 2014 AND pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values of pct_female_students column with average pct_female_students in the year 2015
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE year = 2015 AND pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE year = 2015 AND pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values of pct_female_students column with average pct_female_students in the year 2016
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE year = 2016 AND pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE year = 2016 AND  pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;



-- replace null values of pct_female_students column with average pct_female_students
SET SQL_SAFE_UPDATES =0;
UPDATE university_year 
SET pct_female_students = (
    SELECT * FROM (
        SELECT AVG(pct_female_students) FROM university_year WHERE pct_female_students IS NOT NULL
    ) AS temp_avg
)
WHERE pct_female_students IS NULL;
SET SQL_SAFE_UPDATES =1;


-- change datatype of pct_female_students to decimal
ALTER TABLE university_year
MODIFY COLUMN pct_female_students DECIMAL(5,2);


-- change datatype of pct_international_students to decimal
ALTER TABLE university_year
MODIFY COLUMN pct_international_students DECIMAL(5,2);


-- divide pct_female_students &pct_international_students by 100 to make it as percentage
SET SQL_SAFE_UPDATES = 0;
UPDATE university_year
SET pct_female_students = pct_female_students / 100,
    pct_international_students = pct_international_students / 100;
SET SQL_SAFE_UPDATES = 1;

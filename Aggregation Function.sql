-- Aggregate Function

USE student_details;
-- COUNT
SELECT COUNT(*) FROM student_info; -- count the number of rows.

SELECT COUNT(DISTINCT student_company) AS company_name FROM student_info;-- count the number of unique student company

SELECT COUNT(DISTINCT location) AS location FROM student_info; -- count the number of unique location. 

SELECT COUNT( source_of_joining) AS location FROM student_info; -- count of different location

SELECT COUNT(DISTINCT source_of_joining) AS source FROM student_info; -- count the unique source of joining

SELECT COUNT(*) AS batch_date FROM student_info WHERE batch_date LIKE "%-02-%";

SELECT COUNT(*) AS batch_date FROM student_info WHERE batch_date LIKE "5%";

-- GROUP BY :- GROUPING THE DATA.

-- find the number how many pepole joined through which platform

SELECT source_of_joining,count(*) from student_info GROUP BY source_of_joining;

SELECT location,count(*) from student_info GROUP BY location;

-- Write a Sql Query to find loaction and source of joining

SELECT location,source_of_joining,count(*) FROM student_info GROUP BY location,source_of_joining;

-- find  how many student are enrolled for each course..

SELECT selected_course,count(*) from student_info GROUP BY selected_course;

SELECT batch_date,selected_course,COUNT(*) FROM student_info GROUP BY batch_date,selected_course;

-- MIN & MAX

SELECT min(years_of_exp) FROM student_info;

SELECT max(years_of_exp) FROM student_info;

-- FIND STUDENT NAME WHICH HAS MINIMUM NUMBER OF EXPERIENCE.
SELECT min(years_of_exp),student_fname FROM student_info; -- this won't work.

SELECT student_fname FROM student_info ORDER BY years_of_exp LIMIT 1;

-- Show Each source of joining with Maximum Number of Years of experience..

SELECT source_of_joining,MAX(years_of_exp) from student_info GROUP BY source_of_joining ;
-- SUM

SELECT source_of_joining,sum(years_of_exp) from student_info GROUP BY source_of_joining ;

-- Average

SELECT location,AVG(years_of_exp) from student_info GROUP BY location ;

SELECT student_company,AVG(years_of_exp) from student_info GROUP BY student_company ;







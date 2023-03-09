-- DISTINCT, ORDER BY,LIKE,LIMIT



SELECT * FROM student_info;

-- DISTINCT :- Used to get only unique values.. 

SELECT location FROM student_info;

SELECT DISTINCT  location FROM student_info;

SELECT DISTINCT  student_company FROM student_info;

SELECT DISTINCT  source_of_joining FROM student_info;


-- ORDER BY :- Used to order the tables.

SELECT * FROM student_info ORDER BY years_of_exp;

SELECT student_lname FROM student_info ORDER BY student_fname;


SELECT student_fname,years_of_exp FROM student_info ORDER BY 2 DESC;


-- LIMIT :- WILL BE USED WITH ORDER BY
-- Get the first 2 studnet first name which has least years of experience 
SELECT student_fname,years_of_exp FROM student_info ORDER BY years_of_exp LIMIT 2;
SELECT student_fname,years_of_exp FROM student_info ORDER BY years_of_exp DESC  LIMIT 2;

-- Want to know from which source last 3 candidate has enrolled in course.

SELECT source_of_joining FROM student_info ORDER BY student_enrollment_date DESC LIMIT 0,3;

SELECT source_of_joining FROM student_info ORDER BY student_enrollment_date DESC LIMIT 3,2;

-- LIKE

SELECT student_id,student_enrollment_date,selected_course,student_fname,student_company from student_info
WHERE student_fname LIKE "%A%";

SELECT student_id,student_enrollment_date,selected_course,student_fname,student_company from student_info
WHERE student_fname LIKE "S%";

SELECT student_id,student_enrollment_date,selected_course,student_fname,student_company from student_info
WHERE student_fname LIKE "%t";

SELECT student_id,student_enrollment_date,selected_course,student_fname,student_company from student_info
WHERE student_fname LIKE "_____";

-- % __ are called wildcard character. \%,\_




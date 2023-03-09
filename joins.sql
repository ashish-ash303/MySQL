-- JOINS

SELECT * FROM courses_2;
SELECT * FROM student_info;

-- Find Which course did the Amit enrolled. 

SELECT course_name FROM courses_2 where course_id =
(SELECT SELECTED_COURSE FROM student_info WHERE student_fname="Amit");

-- JOINING TWO COLUMNS

SELECT student_info.student_fname,student_info.student_lname,courses_2.course_name 
from student_info JOIN courses_2 ON student_info.selected_course=courses_2.course_id; 
-- by default Inner join ( Only the matching record are considered .Non matching record are not considered). 

-- LEFT OUTER JOIN : - WE CONSIDERED ALL MATCHING RECORD FROM LEFT AND RIGHT RECORD AND
--  ALL THE NON MATCHING RECORD  WHICH ARE PRESENT IN LEFT TABLE AND NOT IN RIGHT TABLE ARE ALSO CONSIDERED. 
 
CREATE TABLE student_info_latest AS SELECT * FROM student_info;

CREATE TABLE courses_2_latest AS SELECT * FROM courses_2;

SELECT * FROM courses_2_latest;

DELETE FROM courses_2_latest where course_id=2;

SELECT student_info_latest.student_fname,student_info_latest.student_lname,courses_2_latest.course_name 
from student_info_latest JOIN courses_2_latest ON student_info_latest.selected_course=courses_2_latest.course_id;

SELECT student_info_latest.student_fname,student_info_latest.student_lname,courses_2_latest.course_name 
from student_info_latest LEFT JOIN courses_2_latest ON student_info_latest.selected_course=courses_2_latest.course_id;

-- RIGHT JOIN :- WE CONSIDERED ALL MATCHING RECORD FROM LEFT AND RIGHT RECORD AND
--  ALL THE NON MATCHING RECORD  WHICH ARE PRESENT IN LEFT TABLE AND NOT IN RIGHT TABLE ARE ALSO CONSIDERED.

SELECT student_info_latest.student_fname,student_info_latest.student_lname,courses_2_latest.course_name 
from student_info_latest RIGHT JOIN courses_2_latest ON student_info_latest.selected_course=courses_2_latest.course_id;


-- FULL OUTER JOIN :- ALL THE MATCHING RECORDS + ALL NON MATCHING RECORDS FROM LEFT + ALL NON MATCHING RECORD FROM RIGHT
SELECT student_info_latest.student_fname,student_info_latest.student_lname,courses_2_latest.course_name 
from student_info_latest LEFT JOIN courses_2_latest ON student_info_latest.selected_course=courses_2_latest.course_id
UNION
SELECT student_info_latest.student_fname,student_info_latest.student_lname,courses_2_latest.course_name 
from student_info_latest RIGHT JOIN courses_2_latest ON student_info_latest.selected_course=courses_2_latest.course_id;

-- CROSS JOIN :- 

SELECT COUNT(*) FROM student_info_latest,courses_2_latest;

SELECT * FROM student_info_latest JOIN courses_2_latest;





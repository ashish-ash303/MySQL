DESC student_info;

-- NOT IN
-- Select all the student who are not from banglore..
SELECT * FROM student_info WHERE location != "banglore";

-- NOT LIKE
-- Select all courses which have   data inside it.
SELECT * FROM courses where course_name LIKE "%De%";
-- Select all courses which have not  data inside it.
SELECT * FROM courses where course_name not  LIKE "%De%";

-- AND,OR,BETWEEN,NOT BETWEEN

-- all students from banglore who joined through LinkedIn and have less than 3 years of experinece.
SELECT * FROM student_info WHERE years_of_exp<3 and location = "banglore" and source_of_joining="Linkedn";

-- FIND ALL PEOPLE WHO HAS LESS THAN 8 YEARS OF EXPERINCE AND HAS LESS THAN 8 YEAR OF EXPERIENCE.
SELECT * FROM student_info WHERE years_of_exp<5 or years_of_exp>2;

SELECT * FROM student_info WHERE years_of_exp between 5 and 2;

SELECT * FROM student_info WHERE years_of_exp  not between 5 and 2;

-- get list of student who are working for Tesla,walmart

SELECT * FROM student_info WHERE student_company = "Tesla" or student_company ="Walmart";

-- In 
SELECT * FROM student_info WHERE student_company in ("Tesla" ,"Walmart","Microsoft");

SELECT * FROM student_info WHERE student_company not  in ("Tesla" ,"Walmart","Microsoft");

-- CASE
-- IF A COURSE IS MORE THAN 4 YEAR WE CATEGORIES IT AS A MASTER PROGRAM ELSE IT IS A DIPLOMA.
SELECT * FROM courses;
SELECT course_id,course_name,course_fee,
CASE WHEN course_duration_months > 4 THEN 'MASTER'
ELSE 'DIPLOMA'
END AS course_type from courses;

-- People Working for Microsoft,Tesla,Google,Walmart call it as Product based Company while those who working in cred cal them as startup. 

select student_id,student_fname,student_lname,
CASE
WHEN student_company in("Microsoft","Tesla","Google","Walmart")
THEN "Product based Company"
ELSE "STARTUP"
END AS company_type from student_info ;







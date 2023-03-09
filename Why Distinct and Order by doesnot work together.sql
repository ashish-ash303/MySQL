-- DISTINCT AND ORDER BY DIDN'T WORK TOGETHER. 

-- ORDER OF EXECUTION :- FIRST FROM  WILL EXECUTE THEN SELECT WILL EXECUTE.

-- SELECT student_fname,student_lname FROM student_info; first it load the whole table then it search the given columns.alter

SELECT student_fname,student_lname FROM student_info ORDER BY student_company; 

-- ORDER OF EXECUTION
-- FROM WILL LOAD WHOLE TABLE
-- SELECT QUERY WILL CHOOSE THE TABLE
-- ORDER BY ARRANGE THE TABLE

SELECT  DISTINCT source_of_joining from student_info ORDER BY student_enrollment_date;

-- ORDER OF EXECUTION
-- FROM WILL LOAD WHOLE TABLE - SELECT * FROM student_info
-- SELECT QUERY WILL CHOOSE THE TABLE -- SELECT source_of_joining, student_enrollment_date from student_info
-- DISTINCT - SELECT DISTINCT source_of_joining FROM student_info :- gives 5 output
-- SELECT DISTINCT source_of_joining,student_enrollment_date FROM student_info :- gives 6 output

-- ORDER BY ARRANGE THE TABLE
-- SELECT    source_of_joining from student_info ORDER BY student_enrollment_date;

-- Since it get different output while distincting it that why it doesnot work..




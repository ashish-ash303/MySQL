-- ROW NUMBER 
-- When we use row_number we should be using order by clause and 
-- can we partition by clause .for every change row number starts with 1

DROP TABLE employees_1;

CREATE TABLE employees_1(
first_name varchar(20),
lastname varchar(20),
age int,
salary int,
location varchar(30)
);

DESC employees_1;

INSERT INTO employees_1
VALUES ("Ramesh","Singh",23,20000,"Banglore"),
	   ("Sachin","Sriyash",24,20000,"Banglore "),
       ("Marsh","Karl",29,80000,"Lucknow"),
       ("King","George",22,20000,"Noida"),
       ("Rahul","Prajapati",21,40000,"Mumbai"),
       ("Saurabh","Singh",23,30000,"Lucknow"),
       ("Kapil","Kinno",29,80000,"Grurgram"),
       ("Sunil","Swami",25,40000,"Mumbai"),
       ("Shikhar","Sharma",29,90000,"Banglore");
       
SELECT * FROM employees_1;

SELECT first_name,lastname,salary,ROW_NUMBER() OVER (ORDER BY salary desc) As row_count from employees_1;


-- Fifth Highest Salary 

SELECT * FROM (
SELECT first_name,lastname,salary,ROW_NUMBER() OVER(ORDER BY salary desc) AS row_count from employees_1
)temp_table WHERE row_count =5;

SELECT * FROM (
SELECT first_name,lastname,salary,ROW_NUMBER() OVER(ORDER BY salary desc) AS row_count from employees_1
)temp_table WHERE row_count =3;



-- ASSIGN ROW NUMBER FOR PARTITION BASED ON EACH LOCATION.
SELECT * FROM (
SELECT first_name,lastname,location,salary,ROW_NUMBER() OVER(PARTITION BY location ORDER BY salary desc) AS row_count from employees_1
)temp_table;

-- FIND THE HIGHEST SALARY GETTER AT EACH LOCATION

SELECT * from(
SELECT first_name,lastname,location,salary,ROW_NUMBER() 
OVER (PARTITION BY location ORDER BY SALARY DESC)as row_num from employees_1)temp_table WHERE row_num=1;
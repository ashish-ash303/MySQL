USE employee_details;

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

 
-- Find out people are from each location and average salary at each location.

SELECT location,count(location) As Total_Count,avg(salary)As Average_Salary from employees_1 group by location;


-- Find out people's firstname,lastname are from each location and average salary at each location.
SELECT first_name,lastname,employees_1.location,Total_Count,Average_Salary from employees_1 join
(SELECT location,count(location) as Total_Count,avg(salary) As Average_Salary from employees_1 group by location)
temp_table on employees_1.location =temp_table.location;

-- using Over and Partition Clause
-- Find out people's firstname,lastname are from each location and average salary at each location.

SELECT first_name,lastname,location,
count(location) OVER (PARTITION BY location) AS total,
avg(salary)  OVER (PARTITION BY location) As average_salary from employees_1;







-- Rank and Dense Rank

-- IF THERE IS NO DUPLICATE WE CAN USE ANY OF THREE.
-- RANK --FOR DUPLICATE SAME RANK IS ASSIGNED AND FOR THW NEXT VALUE IT SKIPS THE RANKS..
-- DENSE RANK -- IT DOESNOT SKIPS THE NEXT VALUE.

SELECT first_name,lastname,salary,
ROW_NUMBER() OVER (ORDER BY salary desc) As row_count from employees_1;

SELECT first_name,lastname,salary,
RANK() OVER (ORDER BY salary desc) As row_count from employees_1; -- IT SKIP SOME RANKING.

SELECT first_name,lastname,salary,
DENSE_RANK() OVER (ORDER BY salary desc) As row_count from employees_1; -- IT DOESN'T SKIP RANKING.


SELECT * FROM (
SELECT first_name,lastname,salary,DENSE_RANK() OVER(ORDER BY salary desc) AS row_count from employees_1
)temp_table WHERE row_count =5;
 
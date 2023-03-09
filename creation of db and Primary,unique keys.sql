CREATE DATABASE testdb_2;

SHOW DATABASES;

USE testdb_2;

CREATE TABLE employee_2;

CREATE TABLE employee_2 ( -- for creation of table
employee_id int PRIMARY KEY AUTO_INCREMENT,
firstname varchar(30) NOT NULL,
lastname varchar(30),
age int(10) NOT NULL, 
salary int(10) NOT NULL,
location varchar(30)  NOT NULL DEFAULT "Banglore"
);

desc employee_2;

INSERT INTO employee_2 (firstname,lastname,age,salary,location)
VALUES ("Amit","Singhania",24,200000,"Chennai"),
		("Amit","Singhania",24,200000,"Chennai");
		
	
SELECT * from employee_2;

DROP  TABLE employee_2;

CREATE TABLE employee_2 ( -- for creation of table
employee_id int PRIMARY KEY AUTO_INCREMENT,
firstname varchar(30) NOT NULL,
lastname varchar(30),
age int(10) NOT NULL, 
salary int(10) NOT NULL,
location varchar(30)  NOT NULL DEFAULT "Banglore"

);

DESC employee_2;

INSERT INTO employee_2 (firstname,lastname,age,salary,location)
VALUES ("Amit","Singhania",24,200000,"Chennai"),
		("Amit","Singhania",24,200000,"Chennai");
        
SELECT * from employee_2;

DROP TABLE employee_2;

DESC employee_2;

INSERT INTO employee_2 (firstname,lastname,age,salary)
VALUES ("Amit","Singhania",24,200000),
		("Anuj","singla",24,200000);
        
SELECT * FROM employee_2;

-- Difference between Unique Key and Primary Key
-- We can have only one primary key and the primary key cannot hold any NULL value.
-- Unique Key can hold NULL IN MYSQL We can give any number of NULL. The Purpose of Unique Key is 
-- to make Sure Value Doesn't duplicate.

-- We can have multiple unique Key bt can have one primary key



DROP TABLE employee_2;


CREATE TABLE employee_2 ( -- for creation of table
employee_id int UNIQUE KEY,
firstname varchar(30) NOT NULL,
lastname varchar(30),
age int(10) NOT NULL, 
salary int(10) NOT NULL,
location varchar(30)  NOT NULL DEFAULT "Banglore"
);

DESC employee_2;

INSERT INTO employee_2 value
			(2,"Ashish","Srivastav",22,100000,"Banglore"),
            (null,"Amit","Srivastav",22,100000,"Banglore");
            
SELECT * FROM employee_2;













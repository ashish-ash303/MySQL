SHOW databases; -- show all the databases

USE employee_details; -- to use the specific database

SHOW tables; -- shows the tables.

CREATE TABLE employee ( -- for creation of table

firstname varchar(30),
lastname varchar(30),
age int(10),
salary int(10),
location varchar(30)
);

SHOW  TABLES; -- shows the table

desc employee; -- describe the table


SELECT * from employee; 


-- Insertion in tables

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ashish","Srivastav",22,1300000,"Banglore");

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ashish","Srivastav",22,1300000,"Banglore");

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ashish","Srivastav",22,1300000,"Banglore");

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Aman","Srivastav",22,1300000,"Banglore");
INSERT INTO employee
VALUES ("Ayush","Srivastav",22,1300000,"Banglore");


INSERT INTO employee (firstname,age,salary,location)
VALUES ("Ayan",22,1300000,"Banglore");

-- INSERT INTO employee 
-- VALUES ("Aman",22,1300000,"Banglore");

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ayan's","Singh",22,1300000,"Banglore");

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ayansh\'s","Singh",20,100000,"Banglore");


INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Amit","Singhania",24,200000,"Chennai"),
		("Avinash","Ahuja",23,1300000,"Karnataka"),
        ("Nimit","krishnan",25,20000,"vizak"),
        ("Jerry","Yadav",23,2000000,"West virginia");

SELECT * from employee;

DROP TABLE employee;

SHOW TABLES;


CREATE TABLE employee ( -- for creation of table

firstname varchar(30) NOT NULL,
lastname varchar(30),
age int(10) NOT NULL, 
salary int(10) NOT NULL,
location varchar(30) NOT NULL
);

DESC employee;

INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ashish","Srivastav",1300000,"Banglore");

DROP TABLE employee;

SHOW TABLES;
-- Default Values

CREATE TABLE employee ( -- for creation of table

firstname varchar(30) NOT NULL,
lastname varchar(30),
age int(10) NOT NULL, 
salary int(10) NOT NULL,
location varchar(30)  NOT NULL DEFAULT "Banglore"
);

DESC employee;


INSERT INTO employee (firstname,age,salary)
VALUES ("Ashish",20,1300000);


INSERT INTO employee (firstname,lastname,age,salary,location)
VALUES ("Ashish","Srivastav",22,1300000,"Hyderbad");

INSERT INTO employee (firstname,age,salary)
VALUES ("Ashish",22,1300000);

INSERT INTO employee (firstname,age,salary,location)
VALUES ("Ashish",22,1300000,Null);


SELECT * from employee;

























 ;






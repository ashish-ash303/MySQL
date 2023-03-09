CREATE DATABASE crud_db;

SHOW DATABASES;

USE crud_db;

CREATE TABLE user (
id int PRIMARY KEY,
firstname varchar(20) NOT NULL,
lastname varchar(20),
age int NOT NULL,
salary int NOT NULL,
location varchar(30) NOT NULL DEFAULT "Banglore"
);

DESC user;

DROP TABLE user;



DESC user;

DROP TABLE USER;

CREATE TABLE user (
id int PRIMARY KEY AUTO_INCREMENT,
firstname varchar(20) NOT NULL,
lastname varchar(20),
age int NOT NULL,
salary int ,
location varchar(30) NOT NULL DEFAULT "Banglore"
);

DESC user;


INSERT INTO user (firstname,lastname,age,salary,location) VALUES 
				( "Ashish","srivastav",20,100000,"NEW Delhi"),
                ( "Ashish","srivastav",22,100000,"NEW Delhi");
-- SELECT STATEMENT
SELECT * FROM user;  

SELECT firstname,lastname from user; -- selecting specific columns

SELECT * FROM user where age>20; -- selecting specific rows using where clause

SELECT * FROM user where firstname="Ashish";

SELECT * FROM user where firstname="ashish";

SELECT * FROM user WHERE BINARY firstname="ashish"; -- Strictly checking the case sensitive.

-- changing columns name while extracing the values

SELECT firstname as name ,lastname as surname FROM user;

DROP TABLE user;

-- Updation :- Used to change the data.

SELECT * from user;
CREATE TABLE user (
id int PRIMARY KEY AUTO_INCREMENT,
firstname varchar(20) NOT NULL,
lastname varchar(20),
age int NOT NULL,
salary int ,
location varchar(30) NOT NULL DEFAULT "Banglore"
);

DESC user;

INSERT INTO user (firstname,lastname,age,salary)
values ("Ashish","Srivastav",22,100000),
		("Amit","Jain",24,200000),
        ("Ashok","Nagar",25,150000);
        
SELECT * FROM user;

UPDATE user SET lastname="Mangala" WHERE firstname="Amit";
UPDATE user SET location="Hyderbad" WHERE firstname="Ashok";
UPDATE user SET salary = salary+5000;

SELECT * FROM user;


-- Deletion 

SELECT * FROM user WHERE id =3;

DELETE FROM user WHERE id =2;

SELECT * FROM user;

DELETE FROM user;

SELECT * FROM user;

-- Alter Command :- used to change the structure of the schema (Structure Manipulation)

ALTER table user add jobtitle varchar(50);
ALTER table user DROP jobtitle ;
ALTER table user modify column firstname varchar(40);
ALTER table user drop primary key;
ALTER table user add primary key(id);

DESC USER;

-- DDL :- Data Defination Language (deals with table structure )
-- DML :- Data Manipulation Language (deals with the data)

-- delete from user :- DML (delete the data individually)
-- trancate :- used to delete and it is a DDL command 
-- (drops the table and recreate them). DDL Command. Works when we have to delete huge database.



















              


-- FOREIGN KEY

CREATE DATABASE student_details;

USE student_details;

CREATE table student_info (

student_id int PRIMARY KEY AUTO_INCREMENT,
student_fname varchar(25) NOT NULL,
student_lname varchar(25),
student_email varchar(40) UNIQUE KEY NOT NULL,
student_phone varchar(20) NOT NULL,
student_alternate_phone_number varchar(20),
student_enrollment_date TIMESTAMP NOT NULL,
years_of_exp int NOT NULL,
student_company varchar(30),
batch_date varchar(30) NOT NULL,
source_of_joining varcHar(30) NOT NULL,
location varchar(30) NOT NULL
);

DESC student_info;

INSERT INTO student_info (student_fname,student_lname,student_email,student_phone,
			student_enrollment_date,years_of_exp,student_company,batch_date,
            source_of_joining,location) VALUES
            ("Ashish","Srivastav","ashish12@gmail.com","222222222","2023-02-04 04:20:20",
            4,"Microsoft","5-02-2023","LinkedIn","Banglore"),
            
            ("Amit","jain","aj@gmail.com","22222234","2023-02-04 05:20:20",
            1,"Tesla","5-02-2023","Instagram","Banglore"),
            
            ("Ujjwal","Singh","UJ@gmail.com","222342222","2023-02-04 04:20:20",
            5,"Walmart","5-02-2023","Facebook","Chennai"),
            
            ("Sushant","Srivastav","Ssh@gmail.com","422222222","2023-02-04 04:20:20",
            4,"Microsoft","5-02-2023","LinkedIn","New Delhi"),
            
            ("Sumit","Singh","singh@gmail.com","49999222","2023-02-01 04:20:20",
            3,"CRED","5-02-2023","Instagram","Bihar"),
            
            ("Anuja","Pamdit","anujap@gmail.com","225959222","2023-01-04 04:20:20",
            4,"Google","5-02-2023","LinkedIn","Uttar Pradesh"),
            
            ("Ankit","Mahajan","mahajan@gmail.com","2234982222","2023-01-24 04:20:20",
            4,"","5-02-2023","Facebook","Banglore");

SELECT * FROM student_info;


CREATE table courses(
course_id int PRIMARY KEY NOT NULL,
course_name varchar(30) NOT NULL,
course_duration_months int NOT NULL,
course_fee int NOT NULL
);

INSERT INTO courses values 
(1,"Machine learning",6,20000),
(2,"Web Development",8,10000),
(3,"Deep learning",6,25000),
(4,"DSA learning",6,2000);

SELECT * FROM courses;

DROP TABLE student_info;

CREATE table student_info (

student_id int PRIMARY KEY AUTO_INCREMENT,
student_fname varchar(25) NOT NULL,
student_lname varchar(25),
student_email varchar(40) UNIQUE KEY NOT NULL,
student_phone varchar(20) NOT NULL,
student_alternate_phone_number varchar(20),
student_enrollment_date TIMESTAMP NOT NULL,
selected_course int NOT NULL DEFAULT 1,
years_of_exp int NOT NULL,
student_company varchar(30),
batch_date varchar(30) NOT NULL,
source_of_joining varcHar(30) NOT NULL,
location varchar(30) NOT NULL
);

INSERT INTO student_info(student_fname,student_lname,student_email,student_phone,
student_enrollment_date,selected_course,years_of_exp,student_company,batch_date,source_of_joining,
location)VALUES

("Ashish","Srivastav","ashish12@gmail.com","222222222","2023-02-04 04:20:20",
            1,4,"Microsoft","5-02-2023","LinkedIn","Banglore"),
            
            ("Amit","jain","aj@gmail.com","22222234","2023-02-04 05:20:20",
            3,1,"Tesla","5-02-2023","Instagram","Banglore"),
            
            ("Ujjwal","Singh","UJ@gmail.com","222342222","2023-02-04 04:20:20",
            1,5,"Walmart","5-02-2023","Facebook","Chennai"),
            
            ("Sushant","Srivastav","Ssh@gmail.com","422222222","2023-02-04 04:20:20",
            2,4,"Microsoft","5-02-2023","LinkedIn","New Delhi"),
            
            ("Sumit","Singh","singh@gmail.com","49999222","2023-02-01 04:20:20",
            2,3,"CRED","5-02-2023","Instagram","Bihar"),
            
            ("Anuja","Pamdit","anujap@gmail.com","225959222","2023-01-04 04:20:20",
            .4,4,"Google","5-02-2023","LinkedIn","Uttar Pradesh"),
            
            ("Ankit","Mahajan","mahajan@gmail.com","2234982222","2023-01-24 04:20:20",
            1,4,"","5-02-2023","Facebook","Banglore"); 
            
SELECT * FROM student_info;

DROP TABLE student_info;

CREATE table student_info (

student_id int PRIMARY KEY AUTO_INCREMENT,
student_fname varchar(25) NOT NULL,
student_lname varchar(25),
student_email varchar(40) UNIQUE KEY NOT NULL,
student_phone varchar(20) NOT NULL,
student_alternate_phone_number varchar(20),
student_enrollment_date TIMESTAMP NOT NULL,
selected_course int NOT NULL DEFAULT 1,
years_of_exp int NOT NULL,
student_company varchar(30),
batch_date varchar(30) NOT NULL,
source_of_joining varcHar(30) NOT NULL,
location varchar(30) NOT NULL,
FOREIGN KEY (selected_course) REFERENCES courses(course_id)

);
DESC  student_info;

INSERT INTO student_info(student_fname,student_lname,student_email,student_phone,
student_enrollment_date,selected_course,years_of_exp,student_company,batch_date,source_of_joining,
location)VALUES

("Ashish","Srivastav","ashish123@gmail.com","222222222","2023-02-04 04:20:20",
            1,4,"Microsoft","5-02-2023","LinkedIn","Banglore"),
            
            ("Amit","jain","aj@gmail.com","22222234","2023-02-04 05:20:20",
            3,1,"Tesla","5-02-2023","Instagram","Banglore"),
            
            ("Ujjwal","Singh","UJ@gmail.com","222342222","2023-02-04 04:20:20",
            1,5,"Walmart","5-02-2023","Facebook","Chennai"),
            
            ("Sushant","Srivastav","Ssh@gmail.com","422222222","2023-02-04 04:20:20",
            2,4,"Microsoft","5-02-2023","LinkedIn","New Delhi"),
            
            ("Sumit","Singh","singh@gmail.com","49999222","2023-02-01 04:20:20",
            2,3,"CRED","5-02-2023","Instagram","Bihar"),
            
            ("Anuja","Pandit","anujap@gmail.com","225959222","2023-01-04 04:20:20",
            3,4,"Google","5-02-2023","LinkedIn","Uttar Pradesh"),
            
            ("Ankit","Mahajan","mahajan@gmail.com","2234982222","2023-01-24 04:20:20",
            1,4,"","5-02-2023","Facebook","Banglore");
            

            
SELECT * FROM student_info;

-- FOREIGN KEY CONSTRAINT (RULE) is used to prevent action that destroy link between the tables.

-- CONSTRAINTS ENSURE WHICH TYPE OF DATA CAN GO IN DATABASE. 








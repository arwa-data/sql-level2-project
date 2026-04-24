
-- Create Database
CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Create Students Table

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender CHAR(1), 
    enrollment_date DATE, 
    email VARCHAR(100),
    level INT CHECK (level BETWEEN 1 AND 6),
    track VARCHAR(20), 
    gpa DECIMAL(5,2) CHECK (gpa <= 100) 
);

-- Create Teachers Table
   
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    birth_date DATE,
    gender CHAR(1),
    email VARCHAR(100),
    office_number VARCHAR(10)
);

-- Create Subjects Table

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100)
);


-- Show Tables
SHOW TABLES;


-- Insert Students (30 records)
 
INSERT INTO Students (name, birth_date, gender, enrollment_date, email, level, track, gpa) VALUES
('Ahmed Ali','2006-01-10','M','2022-09-01','ahmed1@mail.com',3,'Scientific',88.50),
('Sara Khalid','2007-02-15','F','2023-09-01','sara1@mail.com',2,'Humanities',91.20),
('Omar Hassan','2005-03-20','M','2021-09-01','omar1@mail.com',4,'Scientific',76.30),
('Lama Saeed','2006-04-12','F','2022-09-01','lama@mail.com',3,'Humanities',85.10),
('Yousef Nasser','2007-05-18','M','2023-09-01','yousef@mail.com',2,'Scientific',79.60),
('Nora Fahad','2005-06-22','F','2021-09-01','nora@mail.com',4,'Humanities',92.00),
('Faisal Ahmed','2006-07-30','M','2022-09-01','faisal@mail.com',3,'Scientific',83.40),
('Huda Ali','2007-08-11','F','2023-09-01','huda@mail.com',2,'Humanities',87.50),
('Saad Omar','2005-09-25','M','2021-09-01','saad@mail.com',4,'Scientific',74.20),
('Reem Khaled','2006-10-05','F','2022-09-01','reem@mail.com',3,'Humanities',90.30),
('Majed Saleh','2007-11-14','M','2023-09-01','majed@mail.com',2,'Scientific',78.00),
('Dana Adel','2005-12-01','F','2021-09-01','dana@mail.com',4,'Humanities',93.10),
('Zaid Sami','2006-01-21','M','2022-09-01','zaid@mail.com',3,'Scientific',81.70),
('Rania Tareq','2007-02-09','F','2023-09-01','rania@mail.com',2,'Humanities',88.80),
('Khaled Musa','2005-03-17','M','2021-09-01','khaled@mail.com',4,'Scientific',75.90),
('Abeer Hasan','2006-04-29','F','2022-09-01','abeer@mail.com',3,'Humanities',86.20),
('Turki Fahad','2007-05-06','M','2023-09-01','turki@mail.com',2,'Scientific',80.50),
('Hind Saleh','2005-06-13','F','2021-09-01','hind@mail.com',4,'Humanities',91.40),
('Bader Ali','2006-07-19','M','2022-09-01','bader@mail.com',3,'Scientific',82.60),
('Maha Nasser','2007-08-23','F','2023-09-01','maha@mail.com',2,'Humanities',89.90),
('Adel Omar','2005-09-08','M','2021-09-01','adel@mail.com',4,'Scientific',73.50),
('Raghad Khalid','2006-10-14','F','2022-09-01','raghad@mail.com',3,'Humanities',92.70),
('Sultan Ahmed','2007-11-28','M','2023-09-01','sultan@mail.com',2,'Scientific',77.80),
('Layan Saeed','2005-12-19','F','2021-09-01','layan@mail.com',4,'Humanities',94.00),
('Nawaf Fahad','2006-01-03','M','2022-09-01','nawaf@mail.com',3,'Scientific',84.10),
('Jood Ali','2007-02-27','F','2023-09-01','jood@mail.com',2,'Humanities',90.60),
('Hamdan Saleh','2005-03-09','M','2021-09-01','hamdan@mail.com',4,'Scientific',72.90),
('Noor Ahmed','2006-04-16','F','2022-09-01','noor@mail.com',3,'Humanities',88.20),
('Yazan Omar','2007-05-21','M','2023-09-01','yazan@mail.com',2,'Scientific',79.30),
('Rana Khaled','2005-06-30','F','2021-09-01','rana@mail.com',4,'Humanities',95.00);


-- Insert Teachers (10 records)
 
INSERT INTO Teachers (name, birth_date, gender, email, office_number) VALUES
('Ali Mohammed','1985-01-10','M','ali@school.com','A101'),
('Fatima Saleh','1990-02-20','F','fatima@school.com','B202'),
('Hassan Omar','1982-03-15','M','hassan@school.com','C303'),
('Aisha Khalid','1991-04-18','F','aisha@school.com','D404'),
('Saud Ahmed','1988-05-22','M','saud@school.com','E505'),
('Mona Nasser','1992-06-30','F','mona@school.com','F606'),
('Khalid Fahad','1984-07-11','M','khalid@school.com','G707'),
('Reem Ali','1993-08-09','F','reem@school.com','H808'),
('Yousef Saleh','1986-09-14','M','yousef@school.com','I909'),
('Nora Hassan','1994-10-25','F','nora@school.com','J010');


-- Insert Subjects (6 records)
 
INSERT INTO Subjects (subject_name) VALUES
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('English'),
('History');


-- show all tables records

SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Subjects;


-- Sort Students by Name (Ascending)

SELECT * FROM Students
ORDER BY name ASC;


-- Alias Column Name

SELECT name AS Student_Name
FROM Students;


-- Update Student Email
 
UPDATE Students
SET email = 'ahhmed11_student@mail.com'
WHERE student_id = 1;


-- Update Teacher Office Number
 
UPDATE Teachers
SET office_number = 'Z999'
WHERE teacher_id = 1;


-- Rename Table

RENAME TABLE Subjects TO Courses;


-- Show Tables After Rename

SHOW TABLES;

-- 1)Create Top Students Table (GPA > 90)

CREATE TABLE Top_Students AS
SELECT * FROM Students
WHERE gpa > 90;


-- 2) Create Failed Students Table (GPA < 60)

CREATE TABLE Failed_Students AS
SELECT *
FROM Students
WHERE gpa < 60;


-- 3) Show students whose names start with 'A'
 
SELECT name
FROM Students
WHERE name LIKE 'A%';


-- 4) Show students with exactly 4 characters in name

SELECT name
FROM Students
WHERE name LIKE "____";

select name, length(name)
from Students;


-- 5) Aggregate functions on GPA
 
SELECT 
    AVG(gpa) AS Average_GPA
FROM Students;


-- 6) Top students in level 6 with GPA = 100

SELECT name
FROM Students
WHERE level = 6 AND gpa = 100;

-- 7) Students in level 1 and age between 15 and 16

SELECT name
FROM Students
WHERE level = 1 
AND TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) BETWEEN 15 AND 16;

-- 8) Count students in level 2

SELECT COUNT(*) AS Level2_Count
FROM Students
WHERE level = 2;


-- 9) Show distinct tracks (no duplicates)

SELECT DISTINCT track
FROM Students;


-- 10) Show subjects in uppercase

SELECT UPPER(subject_name) AS Subjects_Upper
FROM Courses;


-- 11) Average GPA rounded down

SELECT FLOOR(AVG(gpa)) AS Rounded_Average
FROM Students;


-- 12) Replace gender values
 
UPDATE Students
SET gender = CASE
    WHEN gender = 'F' THEN 'Female'
    WHEN gender = 'M' THEN 'Male'
END;


-- 13) Increase GPA for students below 60 by 5

UPDATE Students
SET gpa = gpa + 5
WHERE gpa < 60;
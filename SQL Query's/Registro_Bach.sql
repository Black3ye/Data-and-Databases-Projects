--Jose A. Garcia Osorio  to the app CRegistro
--The realtion into tables users - Class_Completed is One to Many
--Create the databases 
CREATE DATABASE Registro_Bach;
--Creating the table users to make the login
CREATE TABLE USERS(
	User_ID int PRIMARY KEY NOT NULL,
	First_Name varchar(10) NOT NULL,
	Last_Name1 varchar(15) NOT NULL,
	Last_Name2 varchar(15) NULL,
	username varchar(10) NOT NULL,
	password varchar(12) NOT NULL,
	Account varchar(13) NULL,
	Active_Flag [bit] NOT NULL);
--Creating the table CLass_Completed to saves the courses registers
CREATE TABLE Class_Completed(
	Class_ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Class_course_code varchar(5) NOT NULL,
	Class_course_number int NOT NULL,
	Class_course_name varchar(30) NOT NULL,
	Class_credit int NOT NULL,
	Class_grade varchar(5) NULL,
	Class_complete_flag bit NULL,
	User_ID int FOREIGN KEY REFERENCES USERS(User_ID));


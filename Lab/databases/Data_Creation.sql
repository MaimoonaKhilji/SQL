create database Data_Creation;
create table Animals
(
ID int primary key,
Name varchar(255),
Breed varchar(255),
vaccination varchar(255),
Fixed varchar(255),
Price int
);
Create table Merchandise
( ID int primary Key,
brand varchar(255),
description varchar(255),
price int
);
create table sale
(
ID int,
Date date,
items varchar(255),
Amount varchar(255),
primary key(ID, Date)
);
create table Clerk
(
ID int primary key,
Name varchar(255),
Address varchar(255),
Phone varchar(255),
Salary varchar(255)
);
create table customer
(ID int Primary key,
Name varchar(255),
Address varchar(255),
Email varchar(255)
);

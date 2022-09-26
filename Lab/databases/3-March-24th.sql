create table Student 
( St_Id char(6),
St_Name varchar(50),
St_Email varchar(30),
St_Phone  int,
St_Address varchar(50),
unique(St_Id)
);
INSERT INTO Student
VALUES
('A10',
'Basit Ali',
'b@gmail.com',
030000000,
'Peshawar, Pakistan'
);
INSERT INTO Student
VALUES
('A10',
' Ali',
'b@gmail.com',
030000000,
'Peshawar, Pakistan'
);
INSERT INTO Student
VALUES
('A11',
' Ali',
'b@gmail.com',
030000000,
'Peshawar, Pakistan'
);

ALTER TABLE Student
ADD UNIQUE (St_Name,St_Phone);

INSERT INTO Student
VALUES
('A12',
' Ali',
'b@gmail.com',
030000000,
'Peshawar, Pakistan'
);
INSERT INTO Student
VALUES
('A12',
' usman',
'b@gmail.com',
030000000,
'Peshawar, Pakistan'
);
ALTER TABLE Student
ADD primary key (St_Id);

create table test
(
St_id char(3) primary key,
St_Name varchar(50) unique,
St_carrier varchar(50),
St_city varchar(50)
);
create table constraint_test
(
St_id char(3) primary key,
St_Name varchar(50) unique not null,
St_carrier varchar(50) not null,
St_city varchar(50) not null
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE country (
  Code varchar2(3),
  Name varchar2(52) ,
  Continent varchar2(26),
  Region varchar2(26),
  SurfaceArea Number(10,2),
  IndepYear smallint ,
  Population int ,
  LifeExpectancy Number(3,1),
  GNP Number(10,2),
  GNPOld Number(10,2) ,
  LocalName varchar2(45) ,
  GovernmentForm varchar2(45),
  HeadOfState varchar2(60),
  Capital int ,
  Code2 varchar2(2) 
);

CREATE TABLE city (
  ID int,
  Name varchar2(35),
  CountryCode varchar2(3),
  District varchar2(20),
  Population int
  ) ;
  
CREATE TABLE countrylanguage (
  CountryCode varchar2(3),
  Language Varchar2(30) ,
  IsOfficial varchar(5) ,
  Percentage Number(4,1) 
)


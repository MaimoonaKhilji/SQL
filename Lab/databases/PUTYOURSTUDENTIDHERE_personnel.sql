create database uzair123_personnel;
use uzair123_personnel;
CREATE TABLE employee
 (  empid     smallint(4) unsigned not null,
    empfn     varchar(10),
    empln     varchar(15),
    empphone  char(8),
    empsalary decimal(10,2),
    primary key(empid));
INSERT INTO employee VALUES
 (1000,"Joe","Smith","555-1111",90000),
 (1010,"Mary","Jones","555-2222",95000),
 (1020,"Sue","Henry","555-3333",40000),
 (1030,"Peter","Doe","555-4444",60000),
 (1040,"Chris","Lee","555-5555",70000),
 (1050,"Lyn","Wong","555-6666",70000),
 (1060,"John","Young","555-7777",90000),
 (1070,"Jason","South","555-8888",90000),
 (1080,"Kevin","Hero","555-9999",90000),
 (1090,"Julie","Smart","555-1212",75000),
 (1100,"Karen","Sweet","555-1122",45000),
 (1110,"Pat","Tell","555-1112",40000),
 (1120,"Teresa","Old","555-1113",65000),
 (1130,"Bill","Churn","555-1133",55000),
 (1140,"George","Dung","555-1333",35000);
CREATE TABLE project
  (  projid         smallint(4) unsigned not null,
     projdesc       varchar(30),
     projsize       varchar(10),
     projcategory   char(15),
     primary key(projid));
insert into project values
 (2000,"job search web site","large","web"),
 (2010,"payroll distribution","large","mainframe"),
 (2020,"information display","small","web"),
 (2030,"interactive meeting","medium","web"),
 (2040,"communication relay","large","mainframe"),
 (2050,"office roster","small","pc"),
 (2060,"fiscal spending database","medium","pc");
CREATE TABLE empprojects
  (  empid   smallint(4) unsigned not null,
     projid  smallint(4) unsigned not null);
insert into empprojects values
(1000,2000),
(1010,2000),
(1060,2000),
(1100,2000),
(1110,2000),
(1130,2000),
(1070,2010),
(1080,2010),
(1090,2010),
(1120,2010),
(1050,2010),
(1130,2010),
(1140,2010),
(1090,2020),
(1100,2020),
(1000,2030),
(1140,2030),
(1070,2030),
(1100,2030),
(1010,2040),
(1020,2040),
(1030,2040),
(1040,2040),
(1050,2040),
(1030,2050),
(1040,2050),
(1070,2060),
(1080,2060),
(1090,2060),
(1100,2060);
CREATE TABLE training
  ( trainid smallint(4)unsigned not null,
    traincourse  varchar(30),
    traindate    date,
    trainvendor  varchar(30),
    traincost    decimal(10,2),
    empid        smallint(4) unsigned,
    primary key(trainid));
insert into training values
(3000,"Java Programming","2003-07-07","The School",2000,1020),
(3010,"Javascript Basics","2004-02-01","ABC Trainers",1500,1020),
(3020,"Java Programming","2003-07-07","The School",2000,1030),
(3030,"Intro to C++","2003-03-03","Computer Central",1900,1040),
(3040,"Java Programming","2003-07-07","The School",2000,1050),
(3050,"Javascript Basics","2003-08-08","State University",1300,1050),
(3060,"Javascript Basics","2004-02-01","ABC Trainers",1500,1060),
(3070,"Intro to C++","2003-03-03","Computer Central",1900,1060),
(3080,"Project Management","2003-12-03","State University",1300,1060),
(3090,"Project Management","2003-12-03","State University",1300,1070),
(3100,"Project Management","2003-12-03","State University",1300,1080),
(3110,"Database Management","2004-04-04","The School",2500,1090),
(3120,"SQL basics","2003-06-06","Computer Central",1900,1100),
(3130,"Java Programming","2003-07-07","The School",2000,1100),
(3140,"SQL basics","2003-06-06","Computer Central",1900,1120),
(3150,"Database Management","2004-04-04","The school",2500,1120);


SELECT employee.empfn, employee.empln, training.traincourse
FROM (employee
INNER JOIN training ON employee.empid = training.empid)
where training.trainvendor ="The School" or training.trainvendor ="ABC Trainers";


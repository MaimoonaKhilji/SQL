
--FIrst connect to a system
--then create a user
create user tutorial identified by tutor;

GRANT ALL PRIVILEGES to tutorial;
GRANT SELECT, UPDATE, INSERT on hr.employees TO tutorial;

REVOKE ALL PRIVILEGES from tutorial;
REVOKE SELECT, UPDATE, INSERT on hr.employees FROM tutorial;



create Table Books
(
Book_ID Number(5) primary key,
Title varchar2(20),
Author_Id Number(5),
Price Number(5)
);



create Table OrderT
(
Order_Id Number(5) primary key,
OrderNo Number(5) null,
BOOK_Id Number(5)
);
insert into OrderT(Order_ID,BOOK_Id)
values(1,33);
select * from OrderT;

CREATE TABLE Movies
(
title varchar2(50) primary key,
studio_id Number(5),
budget Number(5) check (budget>50000),
city varchar2(50) ,
constraint citybud check((city='peshawar' OR city='islamabad') 
                        AND(studio_id>=0 AND studio_id<=1000))
);


create Table students
(
Std_id Number(5),
Fname varchar(255),
Age Number(5)  Default 20,
primary key(Std_id)
);


insert into students
values
( 1 , 'Basit', 22 );





insert into students(Std_id, Fname)
values ( 2 , 'Basit'  );




create table Students2 as
(select * from students);

create table Students3(Std_id,Fname) as
(select * from students);

INSERT INTO students2
(select * from students);

INSERT INTO students2(Std_id,Fname)
Select Std_id,Fname
From students;



insert into students
values
( 2 , 'Ahmad', 22 );

insert into students
values
( 3 , 'Ali'  , 23 );

insert into students
values
( 4 , 'Usman', 20 );

insert into students
values
( 5 , 'Zaidan', 20 );




create table city
(
name varchar2(100),
population Number(10),
constraint unique_c UNIQUE(name,population)
);


insert into city
values('Peshawar',255000);
insert into city
values('Islamabad',250000);
insert into city
values('Lahore',350000);
insert into city
values('Karachi',420000);

--FORMATTING
col column_name1 format a20;

delete from city
where name ='Lahore';

truncate table city;



UPDATE students
SET Age=24
where FName='Usman';

ALTER TABLE students
ADD DEPARTMENT varchar2(20);


ALTER TABLE students 
MODIFY DEPARTMENT number(10); 

ALTER TABLE students 
DROP COLUMN DEPARTMENT; 

ALTER TABLE student_data
RENAME TO students;

ALTER TABLE Books
RENAME TO Books_data;

---clear the scren
cl scr;


select * from students;
select FName, AGE from students;
select FName,Age, AGE+5 from students;
select FName "First Name" ,Age AS "Student's age" from students;
select FName  || AGE  AS "Name+Age" from students;
select FName || ' '  || AGE AS " Name + + Age " from students;
select FName || q'['s  Age is  ]'  || AGE AS " Students's  Age " from students;
select FNAME from students;
select DISTINCT Fname from students;
DESCRIBE students;


select * from students
where age>=22;

select * from students
where fname IN ('Ali', 'Ahmad');

select * from students
where age BETWEEN 19 and 23;

select * from students
where fname like 'Z%';

select * from students
ORDER BY Age;

select * from students
WHERE Age = '&var';

select fname,&&ColumnName 
from students
ORDER BY &ColumnName;

--define
define age_variable = 23
select * from students
where age >= &age_variable;

undefine emp_id;


select LOWER(FNAME),Age from students;
select UPPER(FNAME),Age from students;
select INITCAP(FNAME),Age from students;

select FNAME, CONCAT('+',FNAME),SUBSTR(FNAME,0,1), LENGTH(FNAME), INSTR(FNAME,'A') from students;

select FNAME, LPAD(FNAME,7,'*'), RPAD(FNAME,7,'*'), TRIM(FNAME), REPLACE(FNAME,'A','AA') from students;


select * FROM students
WHERE MOD(AGE, 2)=0;

ALTER TABLE students
ADD DEPARTMENT varchar2(20);

UPDATE students
SET DEPARTMENT='BS-DS'
where STD_ID=1;
UPDATE students
SET DEPARTMENT='BS-CS'
where STD_ID=2;
UPDATE students
SET DEPARTMENT='BS-DS'
where STD_ID=3;
UPDATE students
SET DEPARTMENT='BS-SE'
where STD_ID=4;
UPDATE students
SET DEPARTMENT='BS-CS'
where STD_ID=5;

SELECT MAX(Age),Min(Age),AVG(AGE),COUNT(AGE), SUM(AGE),VARIANCE(AGE),STDDEV(AGE) from students;
SELECT FNAME,DEPARTMENT, MIN(AGE) FROM students
GROUP BY FNAME,DEPARTMENT;


SELECT FNAME,DEPARTMENT FROM students
GROUP BY FNAME,DEPARTMENT;

SELECT DEPARTMENT, MIN(AGE) FROM students
GROUP BY DEPARTMENT
HAVING MIN(AGE)>23;


SELECT s.fname,s.DEPARTMENT,D.HEAD 
FROM students s 
Join DEPARTMENTS D ON (s.DEPARTMENT = D.name);


SELECT s.fname,s.age,s.DEPARTMENT,D.HEAD 
FROM students s 
Join DEPARTMENTS D ON (s.DEPARTMENT = D.name)
where s.Age>=23;

SELECT s.fname,s.age,s.DEPARTMENT,D.HEAD 
FROM students s 
Join DEPARTMENTS D ON (s.DEPARTMENT = D.name)
AND s.Age>=23;


select department_id,department_name, location_id,city
from departments
natural join locations;
--– USING clause
--multiple columns with same name


select employee_id,department_id,department_name
from employees
join departments
using (department_id);

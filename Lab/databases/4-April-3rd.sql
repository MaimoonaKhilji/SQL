create table checkTable
(
Name varchar(255),
Admission_No int Primary key,
class varchar(255),
Fee_status varchar(255),
check (Fee_status ='paid' OR Fee_status='unpaid')
);
INSERT INTO checkTable
VALUES
('Maimoona',
195300,
'bs-ds',
'paid'
);

CREATE TABLE Movies
(
movie_title
varchar(40) NOT NULL,

release_date date DEFAULT '1991-05-11' NULL,

genre varchar(20) DEFAULT 'Comedy',
Check (genre In ('Comedy', 'Horror', 'Drama') ));

INSERT INTO Movies
VALUES
('Batman',
default,
'Comedy'
);

CREATE TABLE Movies
(
movie_title
varchar(40)
NOT NULL,

release_date
datetime
DEFAULT '1991-05-01 05:10:32'
NULL,

genre varchar(20) DEFAULT 'Horror'

);

CREATE TABLE Movies
(
movie_title
varchar(40)
NOT NULL,

release_date
datetime
DEFAULT '1991-05-01 05:10:32'
default '5000'
NULL,

genre varchar(20) DEFAULT 'Horror'

Check (genre In ('Comedy', 'Horror', 'Drama') ));



create Table students
(
Std_id int NOT NuLL auto_increment,
Fname varchar(255),
Age int,
primary key(Std_id)
);
insert into students(Fname,Age)
values
(
'Basit',20
);

insert into students(Fname,Age)
values
(
'ali',20
);
insert into students(Fname,Age)
values
(
'ahmad',20
);
insert into students(Fname,Age)
values
(
'Sohail Ali',20
);
insert into students(Std_id,Fname,Age)
values
(
192,'Sohail Ali',20
);
insert into students(Age,Fname)
values
(
25,'ibrahim'
);
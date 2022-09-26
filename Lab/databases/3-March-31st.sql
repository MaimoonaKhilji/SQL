create Table Student
(
S_ID int primary key,
LastName varchar(50) ,
FirstName varchar(50),
City varchar(50)
);

INSERT INTO Student
VALUES
(1,
'Khilji',
'Maimoona',
'Peshawar'
);
INSERT INTO Student
VALUES
(2,
'Raza',
'Ghuffera',
'Peshawar'
);
INSERT INTO Student
VALUES
(3,
'Humayun',
'Laiba',
'Peshawar'
);
INSERT INTO Student
VALUES
(4,
'haider',
'Sana',
'Peshawar'
);


create Table OrderT
(
O_Id int primary key,
OrderNo int,
BOOK_Id int,
Foreign Key(BOOK_Id) References books(book_no)
);

INSERT INTO OrderT
VALUES
(1,
12345678,
2
);
INSERT INTO OrderT
VALUES
(2,
2567938,
2
);


SELECT OrderT.*, student.*
FROM (Ordert
INNER JOIN student ON Ordert.S_Id = student.S_ID);

create Table Movie
(
title varchar(255) primary key,
studio_id int,
budget int check (budget>50000),
city varchar(255) check(city='peshawar'or city='islamabad')
);
INSERT INTO Movie
VALUES
('Superman',
1032,
100000,
'peshawar'
);
INSERT INTO Movie
VALUES
('Iron Man',
2032,
200000,
'islamabad'
);

create Table Movie
(
title varchar(255) primary key,
studio_id int,
budget int check (budget>50000),
city varchar(255) check(city='peshawar'or city='islamabad'),
release_date date check(Release_Date > '2019-5-1' and Release_Date < '2020-5-1')
);
INSERT INTO Movie
VALUES
('Iron Man',
2032,
200000,
'islamabad',
'2021-3-31'
);


create Table Movie
(
title varchar(255) primary key,
studio_id int,
budget int check (budget>50000),
city varchar(255) check(city='peshawar'or city='islamabad'),
release_date date check(Release_Date > '2019-5-1' and Release_Date < '2020-5-1'),
constraint
citybud check((city='peshawar' OR city='islamabad') AND (budget>50000) AND(release_date>='2019-5-1' AND release_date<='2020-5-1'))
);

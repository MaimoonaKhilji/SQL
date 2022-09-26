CREATE DATABASE MovieRating;

CREATE TABLE Movie (
    mID INT PRIMARY KEY,
    Title VARCHAR(255),
    Year INT,
    Director VARCHAR(255),
    CHECK (Year > 1900)
);

CREATE TABLE Reviewer (
    rID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Rating
(
 rID     int  NULL ,
 mID   int  NULL ,
 Stars  int  NOT  NULL  DEFAULT  1,
 ratingDate  DATE DEFAULT   
        ( DATE( sysdate( ) )),
 
UNIQUE (rID, mID, ratingDate ),

CONSTRAINT checks 
CHECK ( ( Stars in (1,2,3,4,5) ) AND  
( YEAR(ratingDate) > 2000 ) )

  ) ;

SHOW CREATE TABLE Movie; 
SHOW CREATE TABLE Reviewer;
SHOW CREATE TABLE Rating; 


insert into Movie 
values
(1, "Big Hero 6", 2010, "XYZ" ),
(2, "Smurf", 2011, "HYZ" ),
(3, "Zootopia", 2014, "AYZ"  );
SELECT 
    *
FROM
    movie;

insert into reviewer
values 
(01, "ABC"),
(02, "DEF"),
(03, "GHI");
SELECT 
    *
FROM
    reviewer;

insert into rating
values
(1, 03, 3,"2020-10-13 "),
(2, 02, 4,"2001-05-13 "),
(3, 01, 5,"2015-04-12 ");
insert into rating (rID,mID)
values
(4, 04);
SELECT 
    *
FROM
    rating;

DELETE FROM rating 
WHERE
    rID = 3;
SELECT 
    *
FROM
    rating;

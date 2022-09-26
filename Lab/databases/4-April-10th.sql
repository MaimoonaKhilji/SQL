select * from city;
select city.Name from city;
select Name as N,population as p from city;

create table citypop
(
cityname varchar(255),
population int default 5000
); 

insert into CityPop
(select * from city);

#cityname varchar(100)
#population int 
#district varchar(100)
#ccode char(3)

create table cityPop
(select *from city);

delete from citypop
where CountryCode ='AFG';

delete from citypop;

insert into CityPop
(select * from city);

delete from citypop
where CountryCode ='NLD';

delete from citypop
where population<=216800;


delete from citypop
where district='punjab';

UPDATE citypop
SET population=50000, district='XYZ'
where Name='Harare';

truncate table citypop;
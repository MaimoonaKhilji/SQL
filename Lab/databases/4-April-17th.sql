create table cityPop
(select *from city);


create table cityPop
(select Name, Population,District,CountryCode from city);

insert into CityPop
(select * from city);

UPDATE citypop
SET population=5000
where Name='Kabul';

UPDATE citypop
SET population=5000
where District='AFG';

delete from citypop
where CountryCode='AFG';


alter table cityPop
ADD(cityID int );

create table cip;
insert into CityPop
(select * from city where name="Kabul");


insert into cityPop(city_id)
(select ID from city);


UPDATE citypop
SET cityID=1
where Name='Kabul';

drop table cityPop;

alter table cityPop
ADD(cityID int );

INSERT INTO cityPop (cityID)
SELECT ID FROM city;





create table cityPop
(Name varchar(255),
Population int,
District varchar(50),
CountryCode varchar(50)
);
insert into cityPop
select Name, Population,District,CountryCode from city;

ALTER TABLE cityPop
ADD(city_ID int);

update cityPop
set city_id=(select ID from city where Name="Peshawar" )
where Name="Kabul";

update cityPop
set city_id=null
where Name="Kabul";

ALTER Table cityPop
ADD(city_ID int);

insert into citypop(city_id)
select ID from city;

update cityPop
set city_id= (select ID from city)
where citypop.Name = city.Name;

update cityPop
set city_id = Population;

ALTER TABLE cityPop DROP city_ID;
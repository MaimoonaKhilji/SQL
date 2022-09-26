Create database FireDepartment;
Use FireDepartment;
create table FireFighter (
ffBadge smallint(4) unsigned unique not null,
ffFN varchar(20),
ffLN varchar (30),
ffPhone varchar (10),
fStationID smallint(4),
Primary key(ffBadge));
alter table FireFighter change fStationID ffStationID smallint(4);
create table Station (
StationID smallint(4) unsigned unique not null,
sName varchar(15),
sAddress varchar(30),
sCity varchar(25),
sState char(2),
sZip char(5),
sPhone char(10),
primary key (StationID) );

insert into station values
(20, 'Station 20', '61 Plaza St. NE', 'Leesburg', 'VA', '20175', '7037773109'),
(1, 'Station 1', '215 Loudoun St. SW', 'Leesburg', 'VA', '20175', '7037771343');

insert into firefighter values
(111, 'Sarah', 'Singe', '7036295674', 1),
(115, 'Frank', 'Flame', '5716864577', 1),
(2045, 'Betty', 'Burns', '7037843357', 20),
(2076, 'Sam', 'Smoke', '5718647255', 20);
insert into firefighter value
(155, 'Aadi', 'Aag', '7034295674', 1);

CREATE TABLE Fires (
fID smallint(4) unsigned unique not null primary key,
fType varchar(15),
fAlarm smallint(1),
fDate datetime
);

CREATE TABLE FiresFought (
fID smallint(4) unsigned not null,
ffBadge smallint(4) unsigned not null,
primary key (fID, ffBadge) );

INSERT INTO Fires VALUES
(1010,'House',3, '2018-10-15 13:25:00'),
(1011,'Car',2, '2018-10-12 13:25:00'),
(1012,'House',1, '2018-10-11 13:25:00'),
(1013,'Condo',1,'2018-10-10 13:25:00'),
(1014,'Brush',2, '2018-10-19 13:25:00'),
(1015,'House',3, '2018-10-18 13:25:00'),
(1016,'Shed',1, '2018-10-17 13:25:00'),
(1017,'House',3, '2018-10-12 10:25:00'),
(1018,'Brush',1, '2018-10-15 21:25:00'),
(1019,'Truck',2, '2018-10-15 03:25:00'),
(1020,'Leaf',2, '2018-11-15 03:25:00');

Update firefighter
Set ffLN = 'Singed'
Where ffBadge = 111;

SET SQL_SAFE_UPDATES = 0;

update fires
Set fAlarm = 1
 where fType = 'Brush';
 
select * from firesfought f, firefighter ff
where ff.ffln = 'Flame'
and f.ffbadge = ff.ffbadge;

Delete from firesfought
where ffbadge in (select ffbadge from firefighter where ffln = 'Flame');

delete from firefighter
where ffbadge =115;

UPDATE fires
SET fType = 'Apt'
WHERE fID = 1013;

delete from fires
where fID =1020;
Select * from firefighter;

select firefighter.ffFN as 'First' , firefighter.ffLN as 'Last', fires.fType as 'Type' ,fires.fDate as 'Date'
from ((firesfought
INNER JOIN fires ON fires.fID = firesfought.fID)
INNER JOIN firefighter ON firefighter.ffBadge = firesfought.ffBadge)
where fires.fAlarm = 2;






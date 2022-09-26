Create database bnk2072_PetStore;
use bnk2072_PetStore;
Create table Ecustomermployee (
eEmpID smallint(4) unsigned unique not null,
eFN varchar( 20) not null,
eLN varchar( 30) not null,
eStreet varchar(40),
eCity varchar(25),
eState char(2),
eZip char(5),
ePhone char(10),
eSalary decimal(10,2),
primary key(eEmpID)
);
Create table Customer
( cID smallint(4) unsigned unique not null,
cFN varchar(20) not null,
cLN varchar(30) not null,
cStreet varchar(40) not null,
cCity varchar(25) not null,
cState char(2),
cZip char(5),
cEmail varchar (40) not null,
primary key(cID));
Create Table Animal (
aID smallint(4) unsigned unique not null,
aName varchar (20) not null,
aBreed varchar(50) not null,
aVac char,
aFixxed varchar(20),
aDOB date,
aPrice decimal (8,2) not null,
primary key (aID));
Create Table Merchandise (
mID smallint(4) unsigned unique not null,
mBrand varchar(20) not null,
mDesc varchar(40)not null,
mPrice decimal (10,2) not null,
primary key  (mID));
Create Table Sale
( sID smallint(4) unsigned not null,
sDate date,
sClerkID smallint(4),
sCustID smallint(4),
sTotal decimal(10,2),
primary key (sID));
Create Table Saleitems
(sID smallint(4) unsigned not null,
SaleItem smallint(4) unsigned not null,
primary key (sID, saleItem));


insert into customer
values
(1001,'Bob','Bear','34 Cave St.', 'Woodland','VA', '20199' ,'biggybear@gmail.com'
);
insert into customer
values
(1002,'Bear','Skunk','54 Forest Dr.', 'Woodland','VA', '20199' ,'stinkySam@gmail.com'
);
insert into customer
values
(1003,'Chuck','Wood','76 River Ct', 'Woodland','VA', '20199' ,'cloudchuck@gmail.com'
);
insert into customer
values
(1004,'Fran','Fox','412 Warren Ave', 'Woodland','VA', '20199' ,'foxyfran@gmail.com'
);

insert into ecustomermployee
values
(2001,'Uzair','Jaffar','101 Treehouse St.','Woodland','VA','20199', 7037771234, 25000.00
);

insert into ecustomermployee
values
(2002, 'Robin', 'Robin', '332 Branch Dr.', 'Woodland', 'VA','20199', 5715384498, 30000.00);

#5a
select customer.cLN as 'Customer' , ecustomermployee.eFN as 'Clerk ', sale.sDate as 'Purchase Date ', sale.sTotal as 'Total'
from (( sale
inner join customer on cID = sCustID)
inner join ecustomermployee on eEmpID = sClerkID);

#5b
select customer.cLN as 'Customer' , merchandise.mBrand as 'Brand ', merchandise.mDesc as 'item '
From customer
Inner join sale on sale.sCustID=customer.cID
Inner join saleitems on saleitems.sID=sale.sID
Inner join merchandise on merchandise.mID=saleitems.SaleItem;


#5c
select customer.cLN as 'Customer' , animal.aname as 'Animal ', animal.aBreed as 'item '
From customer
Inner join sale on sale.sCustID=customer.cID
Inner join saleitems on saleitems.sID=sale.sID
Inner join animal on animal.aID=saleitems.SaleItem;

#5d
select ecustomermployee.eFN as 'clerk', sum( sale.sTotal) as 'Amount Sold'
from (sale
inner join ecustomermployee on ecustomermployee.eEmpID = sale.sClerkID)
group by ecustomermployee.eFN;

select sum( sale.sTotal) as 'Amount Sold', sID
from sale;

select ecustomermployee.eFN as 'clerk', sum( sale.sTotal) as 'Amount Sold',  sale.* 
from (sale
inner join ecustomermployee on ecustomermployee.eEmpID = sale.sClerkID)
group by ecustomermployee.eFN;

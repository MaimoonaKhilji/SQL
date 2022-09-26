#1. Create a new database named POS.
create DATABASE POS;

#2. The database system should contain the above shown tables with attributes.
create table Customers
(
CustomerID int Primary Key, 
Title varchar(255),			
FirstName varchar(255),
LastName varchar(255),
Company varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
PostalCode char(5),
PhoneNumber int,
Rating int
);

create table Stocks
(
ProductNo int primary key,
Descriptions varchar(255),
Catalog varchar(255), # complete list of items, typically one in alphabetical or other systematic order
Quantity int,
Cost int,
SellingPrice int
);

create table Orders
(
OrderNo int Primary key,
CustomerID int,
Date date,
TotalInvoicee varchar(255)  #An invoice typically contains contact information for the 
							#seller or service provider in case there is an error relating to the billing.
);

CREATE TABLE OrderDetails
(
OrderNo int UNIQUE ,
ProductNo int UNIQUE ,
QtyOrder int ,
QtyShip int , 
Subtotal int ,
FOREIGN KEY (OrderNo)REFERENCES Orders (OrderNo) ,
FOREIGN KEY (ProductNo)REFERENCES Stocks (ProductNo)
);
create Table Bank(
Br_code int,
Acc_no int,
Balance int,
Primary key(Br_code, Acc_no)
);
insert into Bank
values
(123, 123456789, 10000);

create table Copy as
(select * from employee)

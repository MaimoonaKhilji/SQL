create table cityxyz
(name varchar(100),
population int,
constraint unique_c UNIQUE(name,population)
);
insert into cityxyz
values('peshawar',250000);
insert into cityxyz
values('Islamabad',250000);

#for removing constraints
ALTER TABLE cityxyz
DROP CONSTRAINT unique_c;

insert into cityxyz
values('peshawar',250000);
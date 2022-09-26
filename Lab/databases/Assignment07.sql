--Assignment-07
--Maimoona Khilji
--1.Write query to display Employee id, Last Name,Department id and department name from
--table employees &amp; department.

SELECT  employee_id, Last_name,department_id, department_name
from employees natural join departments;

--2. Write query to display Employee’s last name, salary ,department_id and department name of
--all those employees who’s last name starts with A from table employees & department.

SELECT   Last_name,salary,department_id, department_name
from employees natural join departments
where last_name like 'A%';

select * from employees;
--3. Write query to display Employee’s last name, department_id, department name and city where
--department is using employee,department and locations table.
SELECT   Last_name,department_id, department_name, city
from departments 
join employees using (department_id)
join locations using (location_id);



--4. Write query to display employee first name, his salary and his manager’s first name his salary
--from table employees.
SELECT   employee.first_name Employee_FName,employee.salary Employee_Salary, 
manager.first_name manager_FName, manager.salary manager_salary
from employees employee join employees manager on (employee.manager_id=manager.employee_id);

--5. what is your understanding about full outer join write a query and explain its working.
create table Groups
( 
    Group_ID int Primary Key,
    Group_Name varchar2(255)
);
CREATE TABLE Member
(
    Member_id int Primary Key,
    Member_Name varchar2(255) ,
    Group_id int
    
);

insert into Groups
values
( 1, 'BS-DS');
insert into Groups
values
( 2, 'BS-CS');
insert into Groups
values
( 3, 'BS-SE');

insert into Member
values
( 1, 'AHMAD', 1);
insert into Member
values
( 2, 'USMAN', 1);
insert into Member
values
( 3, 'BASIT', 1);
insert into Member
values
( 4, 'IBAD', 2);
insert into Member
values
( 5, 'IRFAN', 2);
insert into Member
values
( 6, 'IZHAR', 1);
insert into Member
values
( 7, 'Aliyan', 4);
insert into Member(member_id,member_name)
values
( 8, 'Zakir');

select * from groups;
select * from member;

select * from member
full outer join groups using(group_id);


--6. what does cross join means in sql write a query and explain it.
create table instructors
( name varchar2(255) );
insert into instructors
values
('Maimoona');
insert into instructors
values
('Maria');

select * from groups;
select * from instructors;
select * from groups 
cross join instructors;



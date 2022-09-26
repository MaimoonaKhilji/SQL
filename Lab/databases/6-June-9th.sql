select  * from employees;
--1.	To list the names (first and last) of those employees whose name starts with A.

select first_name, last_name from employees
where first_name like 'A%';

--2.	To list the names (first and last) of those employees whose last name ends with a.
select first_name, last_name from employees
where last_name like '%a';

--3.	To list the names (first and last) of those employees whose name have second alphabet 's' in their names
select first_name, last_name from employees
where last_name like '_s%';

--4.	To list the names (first and last) of those employees whose first name has only five characters 
--and starts with 'A'.
select first_name, last_name from employees
where LENGTH(first_name)=5 AND first_name like 'A%';


--5.	To list the names (first and last) of the employees whose first name has only five 
--characters and starting with 'S' and ending with 'n'.
select first_name, last_name from employees
where LENGTH(first_name)=5 AND first_name like '%S%n';

--6.	To list the names (first and last), salary of those employees whose salary is 
--four digit number ending with Zero.


select first_name, last_name, salary from employees
where Length(salary)=4 AND salary like '%0';

--7.	To list first_name, last_name of employees with the pattern 'l_x' in their first name. For example ‘Alexander’, ‘Alexis’

select first_name, last_name from employees
where first_name like '_l_x_%';


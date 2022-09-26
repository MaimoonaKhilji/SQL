Select * from employees;

Select (distinct NVL(department_id,0)) from employees
order by department_id;


select department_id, AVG(salary),count(department_id) from employees
group by department_id;

select manager_id, count(first_name),AVG(Salary) from employees
group by manager_id;


select department_id,job_id, AVG(salary),count(department_id) from employees
group by department_id,job_id
order by department_id DESC;

select department_id,job_id, AVG(salary),count(department_id) from employees
group by department_id,job_id
having &a
order by department_id DESC;


select department_id,job_id, AVG(salary),count(department_id) from employees
where department_id in (80,90,100)
group by department_id,job_id
having AVG(Salary)>9000
order by department_id;


select department_id,job_id, &&variable,count(department_id) from employees
where department_id in (80,90,100)
group by department_id,job_id
having &variable>9000
order by department_id;
--&& means the variable will use twice


select department_id,job_id, Max(salary),count(department_id) from employees
where department_id in (80,90,100)
group by department_id,job_id
having Max(salary)>12000 and Max(salary)<20000
order by department_id;



select department_id,avg(salary) from employees
group by department_id
order by department_id;

;
select max(avg(salary)) from employees
group by department_id;

--------------------
--Lecture 06
--Displaying Data from Multiple Tables

Select * from departments;
Select * from locations;
Select * from employees;

Select employees.First_name, departments.department_name from employees, departments;

--create aliases for tables
Select E.First_name, D.department_name from employees E, departments D;

--Types of JOINS and its syntax
--• Natural join:

select department_id,department_name, location_id,city
from departments
natural join locations;



--Assignment05
--1. Write a query in SQL to display the unique designations for the employees.
select DISTINCT job_id "Unique Designation" from employees;

--2. Write a query in SQL to list the employee First & last name in one column 
--and their salary is increased by 15% 
SELECT first_name || ' ' || last_name "Employee Name", 
Salary,
salary+salary*15/100 "salary increased by 15%" 
from employees;


--3.  Write a query to list the all those employees who does not belong to department 90

--Here we have to list all the employees, so i will select the basic info of employees
select employee_id,first_name||' '||last_name "Employee Name", department_id
from employees
where department_id!=90;


--4. Write a query in SQL to list the employees whose salaries are less than 4000.

--Here we have to list all the employees, so i will select the basic info of employees
select employee_id,first_name||' '||last_name "Employee Name",salary from employees
where salary<4000;


--5.  Write a query in SQL to list those employees whose salary is an odd value.

select employee_id,first_name||' '||last_name "Employee Name",salary from employees
where MOD(salary,2)!=0;

--6. Write a query that displays the employee’s last names with the first letter 
--capitalized and all other letters lowercase and the length of the name for all 
--employees whose name starts with J, A, or M. Give each column an appropriate label.
--Sort the results by the employees’ last names.

SELECT   INITCAP (last_name) "name with initial's capital", 
length (last_name)  "length of Name" 
from employees
where last_name LIKE 'J%'    OR    last_name LIKE 'A%'     OR last_name LIKE 'M%'
order by last_name;



--7. Write a query to display the number of people with the same job_id. (Hint use 
--group function, Count.)
SELECT job_id,count(job_id) from employees
group by job_id;

--8. Write a query to display each department’s id, number of employees, and the
--average salary for all employees in that department.
SELECT department_id,count(department_id) "no. of employees", 
trunc(avg(salary)) "average salary"
from employees
group by department_id;

--The End
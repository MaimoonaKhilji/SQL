select * from employees;
select First_name,salary+200 from employees;
select First_name,salary, salary+200 from employees;
select First_name,salary+200*3 from employees;
select First_name,(salary+200)*3 from employees;
select First_name,(commission_pct)+3 from employees;
select First_name,(commission_pct)+salary from employees;

--renaming column name

select commission_pct from employees;
select commission_pct As cp from employees;

select last_name AS Last from employees;
select last_name Last from employees;

select First_name First, salary*13 Annual_Salary from employees;
select First_name First, salary*13 "Annual Salary" from employees;

select first_name "Name" from employees;

-- concatenation

select first_name || Last_name AS Employees from employees;
select first_name || Last_name AS "Full Name" from employees;

select employee_id AS ID,first_name || Last_name AS "Full Name" from employees;

select first_name || ' ' || Last_name AS "Full Name" from employees;

select first_name || ' ' || Last_name || ' is a ' || job_id  AS "Full Name" from employees;

select employee_id ID, first_name ||' '|| Last_name ||' is a ' ||Job_id ||' and its commisiton percentage is ' || commission_pct AS "EMPLOYEE" from employees;

select employee_id ID, first_name ||' '|| Last_name ||' is a ' ||Job_id || q'[' and it's commision is ]' || Commission_pct AS "EMPLOYEE" from employees;


select  ' dept id of '|| department_name ||' is ' || department_id AS "Dept+ID" from departments;

select  department_name || q'['s a manager id is ]' || department_id AS "Dept+ID" from departments;

-- remove duplicates, display unique
select DISTINCT department_id from employees;
select DISTINCT department_id, first_name from employees;


--display structure of table
DESCRIBE employees;
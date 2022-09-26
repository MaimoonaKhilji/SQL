--define
define emp_id=101
select * from employees
where employee_id = &emp_id;
undefine emp_id;


-- verify on/off

define emp_id=101

set verify on
select * from employees
where employee_id = &emp_id;

set VERIFY off;

--Lecture:3
--Character Functions
--Case-COnversion Function
--Lower

select LOWER(last_name) from employees;

select * from employees
where LOWER(last_name)='king';


--Upper
select UPPER(last_name) from employees;

--INITCAP
select * from employees
where last_name=initcap('King');


--Character-Manipulation Function
--CONCAT
select employee_ID,concat('+',employee_id) from employees;

select CONCAT(first_name,last_name) as "FULL Name" from employees;

--SUBSTR
select JOB_ID,SUBSTR(JOB_ID,0,2) from employees;

--LENGTH
select JOb_ID,Length(JOB_ID) from employees;
SELECT * FROM employees
where LENGTH(job_id)=5;

select first_name,Length(first_name) from employees;

--INSTR
SELECT JOB_ID, INSTR(JOB_ID,'AD') from employees;

SELECT * FROM employees
where INSTR(job_id,'AD')=1;

--LPAD | RPAD
SELECT salary, LPAD(salary,7,'-') from employees;
SELECT salary, RPAD(salary,7,'.') from employees;
select * from employees;

--TRIM
select Job_Id,TRIM(job_id) from employees;

--REPLACE

SELECT job_id, REPLACE(job_id,'AD','-') from employees;


-- COmplex FUnctions
SELECT CONCAT(first_name,last_name) as FULLNAME, last_name, 
length( CONCAT(first_name,last_name)), INSTR(last_name,'a') ,job_id from employees
where substr(job_id,0,2)='FI';


SELECT  last_name,salary, length( salary) salaryDigit, INSTR(last_name,'a') ,job_id from employees
where substr(job_id,4,7)='PROG';

select * from employees
where salary NOT IN (2900,2600,2500);

select * from employees
where COMMISSION_PCT is NULL;

select * from EMPLOYEES
where SALARY <= 24000 AND JOB_ID like '%MAN%';

select FIRST_NAME, HIRE_DATE,salary from EMPLOYEES
ORDER BY salary DESC;

select FIRST_NAME, HIRE_DATE,salary*12 ANNUAL from EMPLOYEES
ORDER BY ANNUAL DESC;

select * from employees
order by 6 ; 

select last_name,Salary,department_id
from employees
order by department_id,salary desc;

select employee_id,first_name,salary from employees
where employee_id >= &EMP_ID;

select employee_id,job_id,salary from employees
where job_id = '&job';

select first_name,last_name,job_id,&ColumnName
from Employees
where &CONDITION
ORDER BY &ORDER;
select employee_id, &ColumnName from employees;
select * from employees;

select first_name,last_name,job_id,&&ColumnName
from Employees
ORDER BY &ColumnName;


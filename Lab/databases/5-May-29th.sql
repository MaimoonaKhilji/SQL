
--29th May 2021
--job_ids of those who pay commissions
select LAST_NAME, SALARY, JOB_ID, commission_pct FROM EMPLOYEES
where commission_pct IS not null;



--job_ids of those who doesn't pay commissions
select LAST_NAME, SALARY, JOB_ID, commission_pct FROM EMPLOYEES
where commission_pct IS null;



select  job_id,min(Salary), max(salary), avg(salary) FROM EMPLOYEES
group by job_id
order by min(salary);

select  department_id,job_id,min(Salary), max(salary), avg(salary),count(salary) FROM EMPLOYEES
group by department_id,job_id
order by Avg(Salary);

select min(salary), max(salary), avg(salary) from employees
group by department_id;

select department_id, min(salary), max(salary), round(avg(salary)),count(salary) from employees
group by department_id
order by avg(salary);

UPDATE employees
SET salary=5000
where salary<=3000;

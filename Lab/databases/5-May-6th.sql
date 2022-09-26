Select first_name, salary, salary*12  || ' and ' || (salary+(salary*30/100)) As " combined "  from employees;

DESCRIBE employees;
select * from employees where department_id=50;
select first_name || ' earns ' || Salary As "profit", hire_date from employees 
where hire_date >='17-June-07';

Select first_name || ' earns ' || Salary AS profit, hire_date from employees 
where first_name between 'Bruce' and 'Ismail';

Select first_name || ' earns ' || Salary AS profit, hire_date, manager_id from employees 
where manager_id IN (100,103,108);

Select first_name || ' earns ' || Salary AS profit, hire_date, manager_id from employees 
where first_name like '_a%';
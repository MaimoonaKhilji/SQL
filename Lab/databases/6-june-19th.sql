select * from employees;
select last_name,salary,department_id from employees
where salary=(Select salary from employees where employee_id=103);

select last_name,salary,department_id from employees
where salary=(Select salary from employees where last_name='Hall');

select last_name,salary,department_id from employees
where (Select salary from employees where employee_id=103)=salary;

select last_name,salary,department_id from employees
where salary IN (Select salary from employees where employee_id=103 or employee_id=104);

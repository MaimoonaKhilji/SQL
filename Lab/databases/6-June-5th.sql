select E.first_name from employees E; 

--• Natural join:
-- identical column names and data types

select department_id,department_name, location_id,city
from departments
natural join locations;
--its not important to mention the name of column name in select statement that is same in both tables

select department_id,department_name, city
from departments
natural join locations;
--– USING clause
--multiple columns with same name

select employee_id,department_id,department_name
from employees
join departments
using (department_id);


select l.city, d.department_name
from locations l JOIN departments d
using (location_id)
where location_id= 1400;
--don't use aliases as prefix in using and where clause.


--– ON clause
-- To join columns that have different names
SELECT e.employee_id, e.last_name, e.department_id, 
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

select * from locations;

select employee_id, department_name, city
from employees e
Join departments d ON ( e.department_id = d.department_id)
Join locations l ON ( l.location_id = d.location_id);

select employee_id, department_name, city
from employees e
Join departments d USING (department_id)
Join locations l ON ( l.location_id = d.location_id);

--apply conditions using WHERE and AND clause
select employee_id, department_name, city
from employees e
Join departments d USING (department_id)
Join locations l ON ( l.location_id = d.location_id)
And e.employee_id=100;

select employee_id, department_name, city
from employees e
Join departments d USING (department_id)
Join locations l ON ( l.location_id = d.location_id)
WHERE e.employee_id=100;


-- joins on the basis of columns are equijoin


SELECT * FROM employees;
SELECT e.employee_id, e.first_name, e.salary, m.first_name,m.department_id,m.salary 
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id);


--grant access
grant select on hr.employees to ds;

CREATE TABLE employeess as select * from hr.employees;

--revoking grants
revoke select on hr.employees from ds;
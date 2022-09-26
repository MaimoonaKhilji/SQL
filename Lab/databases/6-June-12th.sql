select * from employees;

--• Self-join
SELECT * FROM employees;
SELECT e.employee_id, e.first_name, e.salary, m.first_name,m.department_id,m.salary 
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id);

--• Nonequijoins
-- those joins that doesn't connect the table on the basis of columns


--• OUTER join:
--– LEFT OUTER join
--– RIGHT OUTER join
--– FULL OUTER join
--• Cartesian product
--– Cross join
-- use cntl + / to comment out multiple lines

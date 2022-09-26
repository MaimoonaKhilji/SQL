SELECT Department_id, MAX(Salary) from employees
GROUP BY  Department_id
ORDER BY Department_id;

SELECT Department_id, AVG(Salary), MAX(Salary) from employees
GROUP BY  Department_id
ORDER BY Department_id;


SELECT Department_id, ROUND(AVG(Salary)), MAX(Salary) from employees
GROUP BY  Department_id
ORDER BY Department_id;

SELECT Department_id, ROUND(AVG(Salary)), MAX(Salary), COUNT(salary) from employees
GROUP BY  Department_id
ORDER BY Department_id;

SELECT Department_id, ROUND(AVG(Salary)), MAX(Salary), COUNT(salary), Max(NVL(commission_pct,0)) from employees
GROUP BY  Department_id
ORDER BY Department_id;

select Department_id, TRUNC(AVG(salary),2),Max(salary),Min(Salary),count(salary),Max(NVL(commission_pct,2)) from employees
GROUP BY Department_id
order by Department_id;


--multiple columns
select Department_id,Job_ID, TRUNC(AVG(salary),2),Max(salary),Min(Salary),count(salary),Max(NVL(commission_pct,2)) from employees
GROUP BY Department_id,job_id
order by Department_id;


select Department_id,Job_ID,count(last_name)from employees
GROUP BY Department_id,job_id
order by Department_id;

select Department_id,Job_ID,count(last_name), sum(salary) SalaryPerMonth from employees
GROUP BY Department_id,job_id
order by Department_id;

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id;
--Having clause

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
Having MAX(salary) >10000;
--Sir in this query, We create groups of department_id, then find the maximum of of those groups,
--but the output is restricted because of having clause.. so the maximum salary
--will be shown of those groups who have more tha 10000.


SELECT job_id, SUM(salary) PAYROLL
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY SUM(salary);

select * from employees;

--Number Functions
--Round


select ROUND(45.926,2) from employees;

--Truncate
select TRUNC(45.926,2) from employees;

--Mod
select MOD(1600,300) from employees;
select MOD(salary, 3) FROM employees;


--Working with Dates

--Sysdate

select sysdate from employees;

--Date Function
--Date Manipulation Function

--MONTHS_BETWEEN
SELECT MONTHS_BETWEEN('04-Aug-21','04-Aug-01') FROM EMPLOYEES;

--ADD_MONTHS
SELECT ADD_MONTHS('22-MAY-21',1) FROM EMPLOYEES;

--NEXT_DAY
SELECT NEXT_DAY('22-MAY-21','SATURDAY') FROM EMPLOYEES;

--LAST_DAY
SELECT LAST_DAY('22-MAY-21') FROM EMPLOYEES;

--ROUND
select ROUND(SYSDATE,'MONTH') from employees;
select ROUND(SYSDATE,'YEAR') from employees;

--TRUNC
select TRUNC(SYSDATE,'MONTH') from employees;
select TRUNC(SYSDATE,'YEAR') from employees;
select TRUNC(TO_DATE('12-Feb-2021'),'YEAR') from employees;


--COMPLEX FUNCTIONS
SELECT employee_id, FIRST_NAME, ROUND(HIRE_DATE,'YEAR') FROM EMPLOYEES;

SELECT employee_id, FIRST_NAME, TRUNC(HIRE_DATE,'YEAR') FROM EMPLOYEES;

--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*--*

--LECTURE-05
--Reporting Aggregated Data Using the Group Functions

--Group functions:

-- 1. Types and syntax
-- 2. Use AVG, SUM, MIN, MAX, COUNT

--• AVG
select * from employees;
SELECT AVG(SALARY) Average FROM EMPLOYEES
where JOB_ID like '%CLERK';

--• COUNT
SELECT COUNT(SALARY) COUNT FROM EMPLOYEES
where JOB_ID like '%CLERK';

SELECT COUNT(*) FROM EMPLOYEES;

--• MAX
SELECT  MAX(SALARY) Maximum FROM EMPLOYEES
where JOB_ID like '%CLERK';

--• MIN
SELECT MIN(SALARY)Minimum FROM EMPLOYEES
where JOB_ID like '%CLERK';

--• STDDEV
SELECT TRUNC(STDDEV(SALARY),2) STDDEV  FROM EMPLOYEES
where JOB_ID like '%CLERK';


--• SUM
SELECT SUM(salary) Total_Salary FROM EMPLOYEES
where JOB_ID like '%CLERK';

--• VARIANCE
SELECT TRUNC(VARIANCE(salary),2) VARIANCE FROM EMPLOYEES
where JOB_ID like '%CLERK';



--COMPLEX
SELECT AVG(SALARY) Average, MAX(SALARY) Maximum,MIN(SALARY)Minimum FROM EMPLOYEES
where JOB_ID like '%CLERK';

SELECT ROUND(AVG(SALARY),2) Average, MAX(SALARY) Maximum,MIN(SALARY)Minimum FROM EMPLOYEES
where JOB_ID like '%CLERK';

SELECT TRUNC(AVG(SALARY),2) Average, MAX(SALARY) Maximum,MIN(SALARY)Minimum FROM EMPLOYEES
where JOB_ID like '%CLERK';

SELECT TRUNC(AVG(SALARY),2) Average, MAX(SALARY) Maximum,MIN(SALARY)Minimum ,
SUM(salary) Total_Salary FROM EMPLOYEES
where JOB_ID like '%CLERK';



-- 3. Use DISTINCT keyword within group functions

SELECT COUNT(department_id) COUNT FROM EMPLOYEES;
SELECT COUNT(Distinct department_id) COUNT FROM EMPLOYEES;

-- 4. NULL values in a group function

SELECT AVG(commission_pct) AVERAGE FROM EMPLOYEES;

SELECT FIRST_NAME,commission_pct  FROM EMPLOYEES;
SELECT FIRST_NAME,commission_pct,NVL(commission_pct,0)  FROM EMPLOYEES;
SELECT TRUNC(AVG(NVL(commission_pct,0)),2) AVERAGE FROM EMPLOYEES;



--Grouping rows:
-- 1. GROUP BY clause

SELECT department_id,TRUNC(AVG(SALARY),2) FROM EMPLOYEES 
GROUP BY department_id;

-- 2. HAVING clause


--• Nesting group functions
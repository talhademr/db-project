-- get me average salary for IT_PROG
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'AC_ACCOUNT';

select JOB_ID, avg(SALARY), COUNT(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

-- get me job_ıd's where their avg salary is more than 5k
select JOB_ID, avg(SALARY), COUNT(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000;
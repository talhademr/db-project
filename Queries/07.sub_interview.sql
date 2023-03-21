--find the highest 14th salary
--list salary high to low without duplicate values
select distinct SALARY
from EMPLOYEES
order by SALARY desc ;

select *
from (select *from EMPLOYEES order by SALARY desc)
where ROWNUM <15;

select min(SALARY)
from (select *from EMPLOYEES order by SALARY desc)
where ROWNUM <15;

--find employee info who is making 14th salary
select *
from EMPLOYEES
where SALARY = 10500;

-- bunu dynamic yapmak için; bi önceki örnekte bulduğumuz en düşük 14.cü maaşı bulma codeunu 10500 yazan yere yapıştır
select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select *from EMPLOYEES order by SALARY desc)
                where ROWNUM <15);
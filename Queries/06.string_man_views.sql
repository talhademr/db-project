--how can we rename the column that we display
select FIRST_NAME as "Given_name", LAST_NAME as "surname"
from EMPLOYEES;

--text fuctions, string mani.
--java first_name + " " + last_name
-- in sql concat is ||

select FIRST_NAME || ' ' || LAST_NAME as "full_name"
from EMPLOYEES;

--Task;
-- add @gmail.com and name new column to full_email
select EMAIL
from EMPLOYEES;

--making all lowercase
select lower (EMAIL || 'gmail.com') as "full_name"
from EMPLOYEES;

--making all uppercase
select upper (EMAIL || 'gmail.com') as "full_name"
from EMPLOYEES;

--length (value)
select FIRST_NAME, length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc ;

--substr (colName,begIndex,NumberOfChar)
select substr (FIRST_NAME,0,1) || '.'||substr(LAST_NAME,0,1) as "initials"
from EMPLOYEES;

--VIEW
create view emaillist_talha as select substr (FIRST_NAME,0,1) || '.'||substr(LAST_NAME,0,1) as "initials"
    from EMPLOYEES;
-- create dediğimizde view klasörüne bi dosya ekleriz as den sonra ne yazıyorsa öyle bi dosya
drop view EMAILLIST_TALHA;
-- drop dediğimizde ise view dosyasındaki view table ı silinir


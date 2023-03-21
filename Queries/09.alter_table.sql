

select * from scrumteam;
--adding new column
ALTER table SCRUMTEAM add salary INTEGER;

--update existing employees salary
UPDATE scrumteam SET salary = 100000 WHERE emp_id = 1;
UPDATE scrumteam SET salary = 90000 WHERE emp_id = 4;
UPDATE scrumteam SET salary = 120000 WHERE emp_id = 3;

--rename the column
ALTER TABLE scrumteam RENAME COLUMN salary TO annual_salary;
--delete, drop column
ALTER TABLE scrumteam DROP COLUMN annual_salary;
--how to change table name ?
ALTER TABLE scrumteam RENAME TO agileteam;

select * from agileteam;

commit ;

--truncate, if we want to delete all data from the table, but still keep the table
-- structure, we use truncate
TRUNCATE TABLE agileteam;
--If we want to delete the table and data together
DROP TABLE agileteam;
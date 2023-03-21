/*
 create table syntax:
    create table tableName(
         colName1 DataType Constraints,
         colName2 DataType Constraints,( optional)
         colName3 DataType Constraints,
        ...
        );
 */

 CREATE TABLE ScrumTeam(
     Emp_ID INTEGER primary key,
     FirstName varchar(30) not null,
     LastName varchar(30),
     JobTitle varchar(20)
 );

select * from ScrumTeam;

/*
 Insert into tableName (column1, column2....)
 Values (value1, vaue2 ...)
 */

 insert into ScrumTeam (emp_id, firstname, lastname, jobtitle)
values (1,'Severus','snape','Tester');
INSERT INTO ScrumTeam VALUES (2, 'Haraold', 'Finch', 'Developer');
INSERT INTO ScrumTeam VALUES (3, 'Phoebe', 'Buffay', 'ScrumMaster');
INSERT INTO ScrumTeam VALUES (4, 'Michael', 'Scofield', 'PO');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
UPDATE ScrumTeam
SET jobtitle = 'Tester'
WHERE emp_id = 4;
--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM ScrumTeam
WHERE emp_id = 2;
--saving changes
commit;
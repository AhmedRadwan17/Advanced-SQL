-- Views
-- Seaurity
 
 --  Creating
create view get_name with encryption as select st_fname from Student

select * from get_name


-- How to provide your seaurity
 -- with encryption

create view get_name2 (sname) with encryption as select st_fname from student 

select * from get_name2

-- to show Definion table
sp_helptext 'get_name2'

-- DML [insert , update , Delete]

create view sp_stud (sname, slastname ,sidd, dep)
as select st_fname , st_lname , st_id ,  Dept_Name from Student s inner join Department d On d.Dept_Id = St_Id

-- show all Data
select * from sp_stud

-- insert but it must be on one table 

insert into sp_stud (sname , slastname , sidd) values ('samy','smsm',20)

-- update 

update sp_stud  set sname = 'ahmed' where sidd = 20
 
-- alter  
-- alter change only shape of out put it is help you only to add new objects from your database

alter view sp_stud (sname, slastname ,sidd, dep, age)
as select st_fname , st_lname , st_id ,  Dept_Name , st_age from Student s inner join Department d On d.Dept_Id = St_Id
 

update sp_stud  set age = 20 where sidd = 20


-- Delete 
Delete from sp_stud where sidd = 20   
-- OutPut Error as we delete from multi tables
select @@ERROR
select ERROR_LINE()


-- Drop  View
Drop view dbo.Ahmed




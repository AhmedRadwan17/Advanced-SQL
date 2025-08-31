                       -- Bult In Functions


-- isnull      
select isnull(st_fname,'') from Student

-- coalesce
select coalesce(st_fname,st_lname,'') from Student


-- convert 
select st_fname , isnull(convert(varchar(20),st_age),0) as age from Student 


-- cast 
select st_fname , isnull(cast(st_age as varchar(20)),0) as age from Student 


-- concat 
select st_fname , isnull(concat(st_fname,st_age),0) as age from Student


-- system Functions 
select db_name()
select SUSER_NAME()


-- string function
select upper(st_fname) from Student
select lower(st_fname) from Student
select substring(st_fname,1,2) from Student
select right(st_fname,2) from Student
select left(st_fname,2) from Student
select len(st_fname) from Student
select replace(st_fname,'ah','s') from Student

 

-- date 
select GETDATE()

select datename(MM,GETDATE())

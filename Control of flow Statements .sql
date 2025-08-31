                   -- Control of flow Statements 
 -- if 
declare @v int 
set @v = 2 
if @v < 5 select 'HIGH' else select 'Low' 

select len(count(*)) from student

if(select count(*) from student) >2 select 'HIGH' else select 'LOW' 
----------------------------------------------------
-- if exists

if exists(select st_fname from student where st_fname = 'Ahmedss') 
select st_fname from Student where st_fname = 'Ahmedss'
else 
select st_fname from Student

------------------------------------------------------------
-- if not exists

if not exists(select st_fname from student where st_fname = 'Ahmedss') 
select st_fname from Student
else 
select st_fname from Student where st_fname = 'Ahmed'

-------------------------------------------------------------
 --begin  end 
 
declare @s int = 2
if @s < 4 
 begin
 select 'number is smaller than 4';
 select 'number is small';
 end
 else 
 begin
 select 'number is bigger than 4';
 select 'number is small';
 end
------------------------------------------------------------------------
--while

declare @u int = 1  
while @u < 5 
begin
        select @u
set @u+=1
end

------------------------------------------------------------------------
  -- case 
select st_fname , case when st_fname = 'Ahmed' then 'Ahmed is genius' else 'un known' end from Student
------------------------------------------------------------------------
-- IIF --> (Short IF)

select iif(st_fname = 'Ahmed' , 'genius','Poor') from Student

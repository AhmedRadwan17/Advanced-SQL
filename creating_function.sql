                    -- Creating Function


-------------------------------------------------------------------------

-- scalar function

-- create function as return one value

create function get_age (@id int)
returns int
begin 
declare @stage int
select @stage = st_age from Student where st_id = @id
return @stage
end


select dbo.get_age(3)
select dbo.get_age(4)

-----------------------------------------------------------------------

-- Inline Function

-- create function as return table

create function old(@a1 int , @a2 int)
returns table
as 
return
(
select st_fname , St_Age from Student where st_age between @a1 and @a2
)
select * from old(10,30)
-----------------------------------------------------------------------------
--  Multistatement


create function getStudent_name (@Format varchar(20))
returns @t table (id int  , name varchar(50))
begin
if lower(@Format)='first'
insert into @t select st_id , st_fname from student 

if lower(@Format)='last'
insert into @t select st_id , st_lname from student

if lower(@Format)='full'
insert into @t select st_id , concat(st_fname , ' ',st_lname) from student
return
end

select * from getStudent_name('FiRSt')

--------------------------------------------------------------------------------

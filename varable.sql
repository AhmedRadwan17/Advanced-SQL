-- sample declare

declare @x int 
set @x = 4 
select @x

-- OutPut From table

declare @y varchar(12)
select @y = st_fname from dbo.Student
select @y
 
-- declare as a table
declare @z table (st_fa varchar(20))
insert into @z 
select St_fname from dbo.Student
select * from @z


-- Global Varable 

select @@ROWCOUNT
select @@VERSION
select @@ERROR
select @@SERVERNAME
select @@IDENTITY
 

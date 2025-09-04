
-- check option --> it helps to provide your seaurity and make insert into more restricted by the condition 

create view v6 as select  St_Id, st_fname , St_Lname , st_address from Student where St_Address in ('Mansoura' , 'Cairo') with check option

select * from v6

insert into v6 (st_id,st_fname,St_Lname,st_address ) values (210,'samy' ,'ahmed' ,'Mansoura')
  
--ERROR AS WE ENTER DATA OUT OF THE RANGE
insert into v6 (st_id,st_fname,St_Lname,st_address ) values (140,'samy' ,'ahmed' ,'asaaasas')


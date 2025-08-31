-- transaction  --> (commit - rollback)

begin transaction 
update Student set st_fname = 'Samy' where St_Id =  20
if @@ERROR =0
commit 
else 
rollback transaction


create table parent (
id int primary key);
create table child(
cid int not null,
foreign key (cid) references parent(id)
)
drop table parent

insert into parent values(1)
insert into parent values(2)
insert into parent values(3)


begin transaction
insert into child values(1)
insert into child values(6)
--insert into child values(2)
if @@ERROR != 0 
rollback transaction
else 
commit transaction
select * from child
drop table child
--------------------------------------------------------------------
-- (Try and Catch With Transaction)

create table parent (
id int primary key);
create table child(
cid int not null,
foreign key (cid) references parent(id)
)

begin try 
     begin tran
           insert into child values (1) 
           insert into child values (5)
           insert into child values (3)
            commit tran
            print 'Transaction Has Applied'

end try

begin catch

                 rollback transaction
                   print 'Transaction Has Not Applied'
                  select ERROR_number() , ERROR_MESSAGE() ,error_line()


end catch

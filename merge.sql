use ITI


create table DailyTranacction(id int , name varchar(10) , value int)
create table LastTransaction(id  int , name varchar(10) , dval int)

insert into DailyTranacction values (1 , 'ahmed' , 4000) ,(2 , 'samy' , 8000) , (7 , 'mona' , 7000)

insert into LastTransaction values (1 , 'ahmed' , 2000) ,(2 , 'samy' , 10000) , (7 , 'mona' ,3000) 


insert into LastTransaction values (8 , 'ahmed' , 1500000)  


-->  merge table consider as target table  --> using table consider as sourse table

merge into DailyTranacction as d using LastTransaction as l On d.id = l .id when matched then
update set d.value = l.dval when not matched then insert values (l.id ,l.name ,l. dval );

-- not matchaed by source  --> in target not on source 

merge into DailyTranacction as d using LastTransaction as l On d.id = l .id when matched then
update set d.value = l.dval when not matched by source then insert values (l.id ,l.name ,l. dval );


-- not matchaed by target  --> in source not on tareget

merge into DailyTranacction as d using LastTransaction as l On d.id = l .id when matched then
update set d.value = l.dval when not matched by target then insert values (l.id ,l.name ,l. dval );


select * from DailyTranacction

select * from LastTransaction

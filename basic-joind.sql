create database university
use university
-- tab1
create table tab1 (
id int primary key , 
name varchar(12) not null,
phone int unique
);

-- tab2
create table tab2 (
id_tab2 int not null ,
dep varchar(12) not null,
FOREIGN KEY (id_tab2) REFERENCES tab1 ( id )
);

insert into tab1 values (1 , 'ahmed' , '01122') , (2 , 'Samy' , '01145') , (3 , 'Ali' , '01178') ; 
insert into tab2 values ( 1 , 'IS' ) , ( 1 , 'IT' ) , ( 1 , 'CS' )

UPDATE tab2
SET id_tab2 = 2
WHERE dep = 'IT';
update tab2 
set id_tab2 = 3
where dep = 'CS'
 

	-- show TABLES DATA 
   select * from tab1;
   select * from tab2;

   -- cross join 
   select name , dep from tab1 a ,tab2 b ; 
   select  id  , dep from tab1 a , tab2 b 
   -- inner join 
    select name , dep from tab1 a ,tab2 b where a .id = b.id_tab2; 
    select  id  , dep from tab1 a , tab2 b  where  a .id = b.id_tab2 ;
	 --outer line 
	 SELECT name, dep FROM tab1 a LEFT OUTER JOIN tab2 b On a.id = b.id_tab2;

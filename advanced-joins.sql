-- Joins
select * from tab1
select * from tab2
select * from tab3

-- cross join --> Multipling 
select name , dep from tab1 , tab2
select phone , dep from tab1 , tab2

-- order by + (name_column) + (DESC , ASC ) 
  
-- inner join --> Equal
select name , dep from tab1 join tab2 On id_tab2 = id order by  name ASC 
select name , dep from tab1 join tab2 On id_tab2 = id 
select phone , dep from tab1 join tab2 On id_tab2 = id

-- outer join --> (1) right , left , full (outer join)
select phone , dep from tab1 right outer join tab2 On id_tab2 = id
select name , dep from tab1 left outer join tab2 On id = id_tab2
select phone , dep from tab1  full outer join tab2 On id_tab2 = id ; 

-- join more than 2 tables
select name , dep , age from tab1 , tab2 , tab3 where id_tab2 = tab1.id and tab1.id = tab3.id 
select name , dep , age from tab1 join tab2  On id_tab2 = tab1.id join tab3 On tab1.id = tab3.id
select phone , dep , age from tab1 join tab2 On  id_tab2 = tab1.id join tab3 On tab1.id = tab3.id


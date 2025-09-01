--  Index  --> 1) clustered Index   --> 2) non clustered index  --> unique Index 
  
      --> Non clustered Index  = --> unique index 

-- How to create Clustered Index


-- create clustered index + name_of_your_clustered_Index + on + table_name(object_name) 


create table m (id int , name varchar(10))


create clustered index clu_pk on m (id)

-- non clustered index --> Helping in search it is fast search in our system

create nonclustered index non_pk on dbo.m(name)

-- often clustered or non clustered helps our to fast select from Database

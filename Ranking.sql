select concat(st_fname, ' ' , st_lname) as [full name] ,concat('AGE:' ,St_Age ), row_number() over(order by st_Age desc) as rn from Student


select concat(st_fname, ' ' , st_lname) as [full name] ,isnull(St_Age,0) as 'AGE', row_number() over(order by st_Age desc) as rn from Student



select concat(st_fname, ' ' , st_lname) as [full name] ,isnull(St_Age,0) as 'AGE', NTILE(4) over(order by st_Age desc) as rn from Student


select concat(st_fname, ' ' , st_lname) as [full name] ,isnull(St_Age,0) as 'AGE', dense_rank() over(order by st_Age desc) as rn from Student


select * from (select concat(st_fname, ' ' , st_lname) as [full name] ,isnull(St_Age,0) as 'AGE', dense_rank() over(order by st_Age desc) as rn from Student) as Sumb 
where rn =3


select * from (select concat(st_fname, ' ' , st_lname) as [full name] ,isnull(St_Age,0) as 'AGE', rank() over(order by st_Age desc) as rn from Student) as Sumb 
where rn =3


select * from (select concat(st_fname, ' ' , st_lname) as [full name] ,isnull(St_Age,0) as 'AGE', NTILE() over(order by st_Age desc) as rn from Student) as Sumb 
where rn =3


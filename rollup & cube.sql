
-- sample group by 

select concat(st_fname ,' ', st_lname) as ['full name], sum(ss) from student group by st_fname , st_lname;

-- rollup

select concat(st_fname ,' ', st_lname) as ['full name], sum(ss) from student group by rollup(st_fname , st_lname);


select st_fname  , sum(ss) from student group by rollup(st_fname);


select concat(st_fname ,' ', st_lname) as ['full name], sum(ss) from student group by rollup(st_lname, st_fname) ;

-- cube


select concat(st_fname ,' ', st_lname) as ['full name], sum(ss) from student group by cube(st_fname , st_lname);


select st_fname  , sum(ss) from student group by cube(st_fname);


select concat(st_fname ,' ', st_lname) as ['full name], sum(ss) from student group by cube(st_lname, st_fname) ;
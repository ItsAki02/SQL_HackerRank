/*
Enter your query here.
*/
select s.name from friends as f
join students as s on s.id = f.id
join packages as p on p.id = f.id
join packages as fp on fp.id = f.friend_id
 where
 fp.salary > p.salary
 order by
 fp.salary;

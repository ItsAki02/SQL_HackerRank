select s.Start_Date,e.End_Date 
from
(select row_number() over(order by End_Date) r, End_Date 
from Projects
where End_Date not in (select(start_Date) from Projects)) e,
(select row_number() over(order by start_Date) r,start_Date 
from Projects
where start_Date not in (select(end_Date) from Projects))as s
where e.r=s.r
order by DATEDIFF(e.End_Date,s.Start_Date),s.Start_Date
;
select id,age,coins_needed,power from wands w 
join wands_property wp
on w.code=wp.code
where is_evil = 0
and coins_needed = (select min(coins_needed) from wands ws where ws.power = w.power and ws.code = w.code) 
order by power desc,age desc;
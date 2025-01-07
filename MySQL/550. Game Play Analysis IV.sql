WITH FirstDay AS (
    select player_id, min(event_date) as first_date
    from Activity
    group by player_id
)
select round(count(a.player_id)/(select count(distinct b.player_id) from Activity b), 2) as fraction
from Activity a
join FirstDay using (player_id)
where DATEDIFF(a.event_date, first_date) = 1;

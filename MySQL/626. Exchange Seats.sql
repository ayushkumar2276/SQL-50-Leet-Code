select a.id, case when b.student is null then a.student else b.student end as student
from seat a left join seat b
on a.id = case when a.id % 2 > 0 then b.id - 1 else b.id + 1 end
order by a.id;

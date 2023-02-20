select
    case when person.name is null then '-'
        else person.name
end as person_name,
pv.visit_date,
       case when piz.name is null then '-'
       else piz.name
end as pizzeria_name
from (select * from person_visits where visit_date between '2022-01-01' and '2022-01-03') pv
full join person on pv.person_id = person.id
full join pizzeria piz on pv.person_id = piz.id
order by 1,2,3
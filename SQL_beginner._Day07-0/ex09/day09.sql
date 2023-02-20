with cast_ as (
    select cast(age as numeric (7,2)), id
    from person
)
select address,
       round((max(cast_.age)-(min(cast_.age)/max(cast_.age))), 2) as formula,
       round(avg(cast_.age), 2) as average,
       round((max(cast_.age)-(min(cast_.age)/max(cast_.age))), 2) > round(avg(cast_.age), 2) as comparison
from person
join cast_  on cast_.id = person.id
group by address
order by address;
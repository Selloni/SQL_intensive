with tmp as (
    select person.name, count(person_visits.id)  as count_of_visits from person
    join person_visits on person.id = person_visits.person_id
    join pizzeria on person_visits.pizzeria_id = pizzeria.id
    group by person.name
    order by 2 desc
)

select tmp.name, count_of_visits from tmp
join person on person.name = tmp.name and tmp.count_of_visits > 3;


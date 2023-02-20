with tmp as (
    select Kate.id, pizzeria_id,visit_date from
        (select person.id from person where name = 'Kate') as Kate
    join person_visits on person_id = Kate.id
)
select menu.pizza_name, menu.price, pizzeria.name as pizzeria_name ,tmp.visit_date
    from (select * from menu where price between 800 and 1000) as menu
    join pizzeria on menu.pizzeria_id = pizzeria.id
    join tmp on tmp.pizzeria_id = pizzeria.id
order by 1,2,3;
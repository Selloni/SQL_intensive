with tmp as ((select pizzeria.name as name , count(pizzeria.id) as count from pizzeria
join menu on pizzeria.id = menu.pizzeria_id
join person_order on menu.id = person_order.menu_id
group by  pizzeria.id)
    union all
(select pizzeria.name, count(pizzeria.id) as count from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
group by pizzeria.id))

select name, sum(count) as total_count from tmp
group by name
order by 2 desc ;
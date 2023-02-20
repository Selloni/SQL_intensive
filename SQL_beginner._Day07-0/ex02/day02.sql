(select pizzeria.name, count(pizzeria.id) as count, 'order' as action_type from pizzeria
join menu on pizzeria.id = menu.pizzeria_id
join person_order on menu.id = person_order.menu_id
group by  pizzeria.id
order by 3, 2 desc
limit 3)
    union all
(select pizzeria.name, count(pizzeria.id) as count, 'visit' as action_type from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
group by pizzeria.id
order by 3, 2 desc
limit 3);

select pizza_name, pizzeria_name from
    (select menu.id, pizza_name, pizzeria.name as pizzeria_name from menu
    join pizzeria on menu.pizzeria_id = pizzeria.id) as osort
join
    (select menu_id from person_order
        join person p on p.id = person_order.person_id where name = 'Anna' or name = 'Denis') as person_order
on osort.id = person_order.menu_id
order by 1, 2;
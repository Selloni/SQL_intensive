select pizza_name, price, name from
    (select * from  menu
        where id not in (select person_order.menu_id from person_order)) as menu
join pizzeria on pizzeria.id = menu.pizzeria_id
order by 1,2;

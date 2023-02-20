select pizza_name, pizzeria_name_1, pizzeria_name_2, table_1.price
    from (select distinct menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name_1, pizzeria.id as id_1, price
        from menu
            join pizzeria on menu.pizzeria_id = pizzeria.id ) as table_1
    join
        (select menu.pizza_name as pizza_name_2, pizzeria.name as pizzeria_name_2, pizzeria.id as id_2, price
        from menu
            join pizzeria on menu.pizzeria_id = pizzeria.id ) as table_2
                on table_1.price = table_2.price and table_1.pizza_name = table_2.pizza_name_2
                    where id_1 > id_2;
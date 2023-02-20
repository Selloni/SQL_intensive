select pizza_name as pizza_name,
       pizzeria.name as pizzeria_name,
       price as price
    from (select pizza_name, price, pizzeria_id from menu
        where pizza_name = 'mushroom pizza' or pizza_name = 'pepperoni pizza') as mushroom
    join pizzeria on pizzeria.id = mushroom.pizzeria_id
order by pizza_name, pizzeria_name, price;


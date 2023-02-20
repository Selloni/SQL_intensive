insert into person_discounts (id, person_id, pizzeria_id, discount)
   select row_number() over () as id,
          person.id as person_id,
          menu.pizzeria_id as pizzeria_id,
        case
            when count(pizzeria_id) = 1 then 10.5
            when count(pizzeria_id) = 2 then 22
            else 30
            end
from person
    join person_order on person.id = person_order.person_id
        join menu on person_order.menu_id = menu.id
            join pizzeria on menu.pizzeria_id = pizzeria.id
--------------------------------------------
group by person.id, menu.pizzeria_id

    --id пицерии в которой заказывал
with order_A as (
    select pizzeria.id as piz_id from pizzeria
        join menu m on pizzeria.id = m.pizzeria_id
            join person_order po on m.id = po.menu_id
                join person p on po.person_id = p.id where p.name = 'Andrey'
 ),
    --id  пицерии которую посещал Андрей
 visit_A as (
    select pizzeria.name as pizzeria_name, pizzeria.id as id from pizzeria
        join person_visits pv on pizzeria.id = pv.pizzeria_id
            join person p2 on p2.id = pv.person_id where p2.name = 'Andrey'
 )

select pizzeria_name from visit_A where id not in (select piz_id from order_A) ;
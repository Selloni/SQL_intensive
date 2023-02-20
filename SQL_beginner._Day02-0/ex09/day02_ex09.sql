with tmp as (
    select person_id, menu_id, p.name, pizza_name  from person_order
    join menu on person_order.menu_id = menu.id
    join person p on person_order.person_id = p.id where p.gender = 'female'
)
select name from tmp where pizza_name = 'pepperoni pizza'
   and  name in (select  name from tmp where pizza_name = 'cheese pizza')
order by name;
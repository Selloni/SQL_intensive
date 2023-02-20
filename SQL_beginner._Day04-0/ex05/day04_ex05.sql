create view v_price_with_discount as
select p.name, menu.pizza_name, menu.price, (price - price * 0.1) as discount_price
from menu
         join person_order po on menu.id = po.menu_id
         join person p on p.id = po.person_id
order by 1;
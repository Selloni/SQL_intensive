select p.name as name,
    m.pizza_name, m.price,
    (m.price - m.price * pd.discount / 100) as discount_price,
    piz.name as pizzeria_name
from person p
join person_discounts pd on p.id = pd.person_id
join pizzeria piz on pd.pizzeria_id = piz.id
join menu m on piz.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
where p.id = po.person_id
order by p.name, pizza_name
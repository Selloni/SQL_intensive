-- insert into person_order (id, person_id, menu_id, order_date)
select new,
       person.id,
       (select menu.id from menu where pizza_name = 'greek pizza'),
       '2022-02-25'
from generate_series((select (max(id) + 1) from person_order),
                     (select max(id) + 1 from person) + (select (max(id)) from person_order)) as new
         join person on person.id + (select (max(id) + 1) from person_order) = new;

select * from person_order;
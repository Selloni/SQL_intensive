create index idx_person_order_order_date
on person_order(person_id, order_date, menu_id)

set enable_seqscan = off;
explain analyze
select person_id, order_date, menu_id from person_order
where order_date = '2022-01-01' and person_id = 1 and menu_id = 1;
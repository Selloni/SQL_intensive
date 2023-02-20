SET enable_seqscan = OFF;
explain analyze
select pizza_name, name as pizzeria_name from  menu
join pizzeria p on menu.pizzeria_id = p.id;

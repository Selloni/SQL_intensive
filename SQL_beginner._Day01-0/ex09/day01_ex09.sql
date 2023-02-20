select name from pizzeria
where id not in (select pizzeria_id from person_visits where pizzeria_id = pizzeria.id);

select name from pizzeria
where not exists (select pizzeria_id from person_visits where pizzeria_id = pizzeria.id);
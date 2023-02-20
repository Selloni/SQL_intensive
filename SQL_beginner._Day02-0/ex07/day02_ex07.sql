select  pizzeria.name as pizzeria_name from
    (select * from person where person.name = 'Dmitriy' ) as person
    join person_visits on person_visits.person_id = person.id
    join pizzeria on person_visits.pizzeria_id = pizzeria.id
    join menu on pizzeria.id = menu.pizzeria_id
        where menu.price < 800 and person_visits.visit_date = '2022-01-08';


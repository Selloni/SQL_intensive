insert into person_visits
values ((select max(id) + 1 from person_visits),
        (select id from person where name = 'Dmitriy'),
        3, '2022-01-08');


refresh materialized view mv_dmitriy_visits_and_eats;
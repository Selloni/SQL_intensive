insert into person_visits
values (
        (select(max(id) + 1) from person_visits),
        (select id from person where name = 'Denis'),
        (select id from pizzeria where name = 'Dominos'),
        '2022-02-24');

insert into person_visits
values (
        (select(max(id) + 1) from person_visits),
        (select id from person where name = 'Irina'),
        (select id from pizzeria where name = 'Dominos'),
                '2022-02-24');
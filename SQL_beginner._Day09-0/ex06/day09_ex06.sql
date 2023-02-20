CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(pperson varchar default 'Dmitriy',
                                                   pprice numeric default 500,
                                                   pdate date default '2022-01-08')
    RETURNS table
            (
                name varchar
            )
AS
$$
BEGIN
    RETURN QUERY (SELECT p.name
                  FROM pizzeria p
                           JOIN person_visits pv on p.id = pv.pizzeria_id
                           JOIN menu m on p.id = m.pizzeria_id
                           JOIN person_order po on m.id = po.menu_id
                           JOIN person p2 on p2.id = po.person_id AND p2.id = pv.person_id
                  WHERE p2.name = pperson
                    AND m.price < pprice
                    AND pv.visit_date = pdate
                    AND po.order_date = pdate);
END;
$$
    LANGUAGE plpgsql;

select *  from fnc_person_visits_and_eats_on_date();

select * from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');

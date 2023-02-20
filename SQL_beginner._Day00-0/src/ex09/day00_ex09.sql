SELECT
       (SELECT name from person where id = pv.person_id) AS person_name ,  -- this is an internal query in a main SELECT clause
        (SELECT name from pizzeria where  id = pv.pizzeria_id) AS pizzeria_name  -- this is an internal query in a main SELECT clause
FROM (SELECT * FROM person_visits WHERE visit_date between '2022-01-07' and '2022-01-09') AS pv -- this is an internal query in a main FROM clause
ORDER BY person_name, pizzeria_name DESC ;

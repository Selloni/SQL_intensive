SELECT DISTINCT order_date as action_date, person_id FROM person_order, person
    WHERE person_id = person.id
ORDER BY action_date ASC, person_id DESC;

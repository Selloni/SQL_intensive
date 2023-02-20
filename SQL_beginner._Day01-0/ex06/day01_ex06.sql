SELECT DISTINCT order_date AS action_date, name AS person_name FROM person_order, person
    WHERE person_id = person.id
ORDER BY order_date, name DESC;


SELECT person_id, order_date FROM person_order WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id, visit_date FROM person_visits WHERE visit_date = '2022-01-07';
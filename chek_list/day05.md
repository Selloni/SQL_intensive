### ex00
- The SQL script looks like below.

      select count(*) = 5 as check
      from pg_indexes
      where indexname in ('idx_menu_pizzeria_id','idx_person_order_person_id',
      'idx_person_order_menu_id','idx_person_visits_person_id','idx_person_visits_pizzeria_id')               

- The result is below (raw ordering should be the same like on a screen below)

      "true"
### ex01-06
    Должен создаться index

### ex00
- The SQL script looks like below.

      select count(*) = 1 as check
      from pg_tables
      where tablename = 'person_discounts'                

- The result is below (raw ordering should be the same like on a screen below)

      "true"
### ex01
- The SQL script looks like below.

      select count(*) > 0 as check
      from person_discounts                

- The result is below (raw ordering should be the same like below)

      "true"
### ex02
      "Andrey"	"cheese pizza"	"800"	"624" "Dominos"
      "Andrey"	"mushroom pizza"	"1100"	"858" "Dominos"
      "Anna"	"cheese pizza"	"900"	"702" "Pizza Hut"
      "Anna"	"pepperoni pizza"	"1200"	"936" "Pizza Hut"
      "Denis"	"cheese pizza"	"700"	"490" "Best Pizza"
      "Denis"	"pepperoni pizza"	"800"	"624" "DinoPizza"
      "Denis"	"pepperoni pizza"	"800"	"560" "Best Pizza"
      "Denis"	"sausage pizza"	"1000"	"780" "DinoPizza"
      "Denis"	"sicilian pizza"	"900"	"805.5" "Dominos"
      "Denis"	"supreme pizza"	"850"	"595" "Best Pizza"
      "Dmitriy"	"pepperoni pizza"	"800"	"716" "DinoPizza"
      "Dmitriy"	"supreme pizza"	"850"	"760.75" "Best Pizza"
      "Elvira"	"pepperoni pizza"	"800"	"624" "DinoPizza"
      "Elvira"	"sausage pizza"	"1000"	"780" "DinoPizza"
      "Irina"	"mushroom pizza"	"950"	"850.25" "Papa Johns"
      "Irina"	"sicilian pizza"	"900"	"805.5" "Dominos"
      "Kate"	"cheese pizza"	"700"	"626.5" "Best Pizza"
      "Nataly"	"cheese pizza"	"800"	"716" "Dominos"
      "Nataly"	"pepperoni pizza"	"1000"	"895" "Papa Johns"
      "Peter"	"mushroom pizza"	"1100"	"984.5" "Dominos"
      "Peter"	"sausage pizza"	"1200"	"936" "Pizza Hut"
      "Peter"	"supreme pizza"	"1200"	"936" "Pizza Hut"
### ex03
- The result should contain a part of text below

      "Index Scan using idx_person_discounts_unique on person_discounts ..."
### ex04
- The SQL script looks like below.

      select count(*) = 4 as check
      from pg_constraint
      where conname in ('ch_nn_person_id','ch_nn_pizzeria_id','ch_nn_discount','ch_range_discount')                   

- The result is below (raw ordering should be the same like below)

        "true"

- The SQL script looks like below.

      select column_default::integer = 0 as check
      from information_schema.columns
      where column_name = 'discount' and table_name = 'person_discounts'          

- The result is below (raw ordering should be the same like below)

        "true"                        
### ex05
- The SQL script looks like below.

      SELECT count(*) = 5 as check
      FROM   pg_description
      WHERE  objoid = 'person_discounts'::regclass                 

- The result is below (raw ordering should be the same like below)

       "true"

### ex06
- The SQL script looks like below.

      select count(*)=1 as check1,
          max("start_value") = 1 as check2,
          max("last_value") > 5 as check3
      from pg_sequences
      where sequencename  = 'seq_person_discounts'                     

- The result is below (raw ordering should be the same like below)

       "true"	"true"	"true"
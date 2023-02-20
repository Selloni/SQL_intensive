### ex00
      "cheese pizza"	"950"	"DinoPizza"	"2022-01-04"
      "pepperoni pizza"	"800"	"Best Pizza"	"2022-01-03"
      "pepperoni pizza"	"800"	"DinoPizza"	"2022-01-04"
      "sausage pizza"	"1000"	"DinoPizza"	"2022-01-04"
      "supreme pizza"	"850"	"Best Pizza"	"2022-01-03"
### ex01
      "5"
      "10"
      "11"
      "12"
      "15"
### ex02
      "cheese pizza"	"700"	"Papa Johns"
      "cheese pizza"	"780"	"DoDo Pizza"
      "cheese pizza"	"950"	"DinoPizza"
      "sausage pizza"	"950"	"Papa Johns"
      "supreme pizza"	"850"	"DoDo Pizza"
### ex03
      "Best Pizza"
      "Dominos"
      "Papa Johns"
### ex04
    "Papa Johns"
### ex05
    "Pizza Hut"
### ex06
    cheese pizza	Best Pizza	Papa Johns	700
    pepperoni pizza DinoPizza Best Pizza  800
    supreme pizza	Best Pizza	DoDo Pizza	850
### ex07
- The check script is below.

       select count(*)=1 as check
       from menu
       where id = 19 and pizzeria_id=2 and pizza_name = 'greek pizza' and price=800

- The result is below 

      true
### ex08
- The check script is below.

       select count(*)=1 as check
       from menu
       where id = 20 and pizzeria_id=2 and pizza_name = 'sicilian pizza' and price=900

- The result is below 

      true
### ex09
- The check script is below.

       select count(*)=2 as check
       from person_visits
       where visit_date = '2022-02-24' and person_id in (6,4) and pizzeria_id=2;

- The result is below 

       true
### ex10
- The check script is below.

       select count(*)=2 as check
       from person_order
       where order_date = '2022-02-24' and person_id in (6,4) and menu_id=(select id from menu where pizza_name = 'sicilian pizza')

- The result is below

       true

### ex11
- The check script is below.

       select (800-800*0.1) = price as check
       from menu
       where pizza_name ='greek pizza'

- The result is below (raw ordering should be the same like below)

       true
### ex12
- The check script is below.

       select count(*)=9 as check
       from person_order
       where order_date='2022-02-25' and menu_id = (select id from menu where pizza_name = 'greek pizza')

- The result is below

       true

### ex13
- The check script is below.

       select count(*)=0 as check
       from person_order
       where order_date='2022-02-25' and menu_id = (select id from menu where pizza_name = 'greek pizza')

- The result is below 

       true

- The check script is below.

       select count(*)=0 as check
       from menu
       where pizza_name = 'greek pizza'

- The result is below 

       true
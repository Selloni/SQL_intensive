### ex00
- SQL to check

      select * from person_audit

- result of SQL

      "2022-03-21 20:27:40.283551 +00:00"	"I"	"10"	"Damir"	"22"	"male"	"Irkutsk"
### ex01
- SQL to check

      select * from person_audit

- result of SQL

      "2022-03-21 20:27:40.283551 +00:00"	"I"	"10"	"Damir"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:29:38.834865 +00:00"	"U"	"10"	"Damir"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:29:39.333943 +00:00"	"U"	"10"	"Bulat"	"22"	"male"	"Irkutsk"
### ex02
- SQL to check

      select * from person_audit order by created;

- result of SQL

      "2022-03-21 20:27:40.283551 +00:00"	"I"	"10"	"Damir"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:29:38.834865 +00:00"	"U"	"10"	"Damir"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:29:39.333943 +00:00"	"U"	"10"	"Bulat"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:30:57.731367 +00:00"	"D"	"10"	"Damir"	"22"	"male"	"Irkutsk"
### ex03
- SQL to check

      select * from person_audit order by created;                                                               

- result of SQL

      "2022-03-21 20:33:30.826364 +00:00"	"I"	"10"	"Damir"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:33:31.282922 +00:00"	"U"	"10"	"Damir"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:33:31.746362 +00:00"	"U"	"10"	"Bulat"	"22"	"male"	"Irkutsk"
      "2022-03-21 20:33:32.228181 +00:00"	"D"	"10"	"Damir"	"22"	"male"	"Irkutsk"


### ex04
- The SQL to check

      select * from fnc_persons_female();

- The result of SQL

      "1"	"Anna"	"16"	"female"	"Moscow"
      "3"	"Kate"	"33"	"female"	"Kazan"
      "5"	"Elvira"	"45"	"female"	"Kazan"
      "6"	"Irina"	"21"	"female"	"Saint-Petersburg"
      "8"	"Nataly"	"30"	"female"	"Novosibirsk"
### ex05
- The  SQL to check

      select * from fnc_persons(pgender := 'male');

- The result of SQL

      "2"	"Andrey"	"21"	"male"	"Moscow"
      "4"	"Denis"	"13"	"male"	"Kazan"
      "7"	"Peter"	"24"	"male"	"Saint-Petersburg"
      "9"	"Dmitriy"	"18"	"male"	"Samara"

- The  SQL to check

      select * from fnc_persons();

- The result of SQL

      "1"	"Anna"	"16"	"female"	"Moscow"
      "3"	"Kate"	"33"	"female"	"Kazan"
      "5"	"Elvira"	"45"	"female"	"Kazan"
      "6"	"Irina"	"21"	"female"	"Saint-Petersburg"
      "8"	"Nataly"	"30"	"female"	"Novosibirsk"
### ex06
- The  SQL to check

      select * from fnc_person_visits_and_eats_on_date(pprice := 800);

- The result of SQL

      "Papa Johns"
      "DoDo Pizza"

- The SQL to check

      select *
      from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');          

- The result of SQL

      "Pizza Hut"
      "Pizza Hut"
      "Pizza Hut"
      "Pizza Hut"
### ex07
- The  SQL to check

      SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);

- The result of SQL

      "-1"
### ex08

- The  SQL to check

      select * from fnc_fibonacci(20)

- The result of SQL

      "0"  
      "1"
      "1"
      "2"
      "3"
      "5"
      "8"
      "13"

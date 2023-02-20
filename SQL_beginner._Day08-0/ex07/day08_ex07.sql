--1
begin;
--2
begin;
--1
update person set age = '22' where id = 1;
--2
update person set age = '26' where id = 2;
--1
update person set age = '221' where id = 2;
--2
update person set age = '27' where id = 2;
--1
commit;
--2
commit;
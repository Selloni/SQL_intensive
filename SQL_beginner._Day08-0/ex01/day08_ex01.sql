---1
begin;
---2
begin;
--1
select * from pizzeria where name = 'Pizza Hut';
--2
select * from pizzeria where name = 'Pizza Hut';
--1
update pizzeria set rating = 4 where name = 'Pizza Hut';
--2
update pizzeria set rating = 3.8 where name = 'Pizza Hut';
--1
commit;
--2
commit;
--1
select * from pizzeria where name = 'Pizza Hut';
--2
select * from pizzeria where name = 'Pizza Hut';



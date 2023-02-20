--1
begin;
set transaction isolation level read committed;
---2
begin;
set transaction isolation level read committed;
--1
select * from pizzeria where name = 'Pizza Hut';
--2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
--2
commit;
--1
select * from pizzeria where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';
--2
select * from pizzeria where name = 'Pizza Hut';




--1
begin;
set transaction isolation level repeatable read;
--2
begin;
set transaction isolation level repeatable read;
--1
select sum(rating) from pizzeria;
--2
update pizzeria set rating = 5 where name= 'Pizza Hut';
commit;
--1
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;
--2
select sum(rating) from pizzeria;
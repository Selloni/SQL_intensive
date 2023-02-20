--1
begin;
set transaction isolation level read committed;
--2
begin;
set transaction isolation level read committed;
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
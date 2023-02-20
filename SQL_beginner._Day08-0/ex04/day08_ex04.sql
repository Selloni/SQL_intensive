--1
begin;
set transaction isolation level serializable;
---2
begin;
set transaction isolation level serializable;
--1
select * from pizzeria where name = 'Pizza Hut';
--2
update pizzeria set rating = 3 where name = 'Pizza Hut';
commit;
--1
select * from pizzeria where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';
--2
select * from pizzeria where name = 'Pizza Hut';

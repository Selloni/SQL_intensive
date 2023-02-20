--https://medium.com/pseudo-blog/уровни-изоляции-транзакций-87cd2b129de1

---1
begin;
set transaction isolation level repeatable read;
---2
begin;
set transaction isolation level repeatable read;
--1
select * from pizzeria where name = 'Pizza Hut';
--2
select * from pizzeria where name = 'Pizza Hut';
--1
update pizzeria set rating = 4 where name = 'Pizza Hut';
--2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
--1
commit;
--2
commit;
--1
select * from pizzeria where name = 'Pizza Hut';
--2
select * from pizzeria where name = 'Pizza Hut';



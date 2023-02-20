begin;
-- Session#1
update pizzeria set rating = 5 where name = 'Pizza Hut';
select  * from pizzeria where name = 'Pizza Hut';
commit;
-- Session#2
select * from pizzeria where name = 'Pizza Hut';
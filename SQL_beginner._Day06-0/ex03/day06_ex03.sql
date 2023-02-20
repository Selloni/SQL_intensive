create index idx_person_discounts_unique
on person_discounts (person_id, pizzeria_id) ;

set enable_seqscan = off;
EXPLAIN ANALYZE
select person_id, pizzeria_id from person_discounts
where person_id = pizzeria_id;
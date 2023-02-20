create index idx_person_name
on person (UPPER(name));

SET enable_seqscan = OFF;
explain analyse
select name from person where upper(name) is not null ;


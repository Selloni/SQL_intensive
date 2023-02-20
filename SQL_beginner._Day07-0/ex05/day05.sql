select distinct name from person
join person_order on person.id = person_order.person_id
order by 1;

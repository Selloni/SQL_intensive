select person.name as name, count(pv) as count_of_visits from person
join person_visits pv on person.id = pv.person_id
group by person.id, pv.person_id
order by 2 desc
limit 5;
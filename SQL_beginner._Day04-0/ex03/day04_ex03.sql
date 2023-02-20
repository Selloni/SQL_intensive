select generated_date as missing_date from v_generated_dates
left join (select visit_date from person_visits) as tmp
on tmp.visit_date = v_generated_dates.generated_date where visit_date is NULL
order by 1;

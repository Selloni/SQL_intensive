select ten_day as missing_date
    from (select distinct visit_date from person_visits
        where (person_id = 1 or person_id = 2) and visit_date >= '2022-01-01' and visit_date <= '2022-01-10') as two
            full outer join (select generate_series('20220101'::date, '20220110'::date, '1 day')::date as ten_day) as day_v
on two.visit_date = day_v.ten_day where two.visit_date is null
order by missing_date;

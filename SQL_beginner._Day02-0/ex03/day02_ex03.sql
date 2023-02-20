with date_ten as (
    select generate_series('20220101'::date, '20220110'::date, '1 day')::date as ten
),
vs_day as (
    select visit_date as ms_date
    from (select visit_date from person_visits
        where (person_id = 1 or person_id = 2)
          and visit_date >= '2022-01-01' and visit_date <= '2022-01-10') as two_person
)
select ten as missing_date from date_ten
full outer join vs_day on ms_date = date_ten.ten where vs_day.ms_date is null
order by 1;


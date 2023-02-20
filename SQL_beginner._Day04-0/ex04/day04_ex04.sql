create view  v_symmetric_union as
with R as (
    (select person_id from person_visits where person_visits.visit_date = '2022-01-02')
),
S as (
     (select person_id from person_visits where person_visits.visit_date = '2022-01-06')
)

(select * from R
except
select * from S)
union all
(select * from S
except
select * from R);

-- select * from v_symmetric_union;
-- drop view v_symmetric_union;
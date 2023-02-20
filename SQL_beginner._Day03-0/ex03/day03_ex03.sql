with woman as (
    select pizzeria.name as w_id
    from pizzeria
             join person_visits pv on pizzeria.id = pv.pizzeria_id
             join person p on p.id = pv.person_id
    where p.gender = 'female'
),
man as (
    select pizzeria.name as m_id
    from pizzeria
             join person_visits pv on pizzeria.id = pv.pizzeria_id
             join person p on p.id = pv.person_id
    where p.gender = 'male'
),
only_woman as (
    select w_id as pizzeria_name from woman
    except all
    select m_id from man
),
only_man as (
    select m_id as pizzeria_name from man
    except all
     select w_id from woman
)
select pizzeria_name from only_woman
union all
select pizzeria_name from only_man
order by 1;

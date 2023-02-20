with woman as (
    select distinct pizzeria.name as w_id
    from pizzeria
             join menu m on pizzeria.id = m.pizzeria_id
            join person_order po on m.id = po.menu_id
            join person p2 on p2.id = po.person_id
    where p2.gender = 'female'
),
man as (
    select distinct pizzeria.name as m_id
    from pizzeria
             join menu m on pizzeria.id = m.pizzeria_id
            join person_order po on m.id = po.menu_id
            join person p2 on p2.id = po.person_id
    where p2.gender = 'male'
),
only_man as (
    select w_id as pizzeria_name from woman
    except
    select m_id from man
),
only_woman as (
    select m_id as pizzeria_name from man
    except
     select w_id from woman
)
select pizzeria_name from only_woman
union all
select pizzeria_name from only_man
order by 1;

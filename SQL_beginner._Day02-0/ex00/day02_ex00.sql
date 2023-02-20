select name, rating
from pizzeria
full outer join person_visits pv on pizzeria.id = pv.pizzeria_id
where pizzeria_id is null or pizzeria.id is null;

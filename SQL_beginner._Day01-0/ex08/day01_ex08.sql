select order_date as order_date, concat(name, ' (age:', age, ')') as person_information
from person
    natural join (select order_date, person_id as id from person_order) as pc
order by person_information,  person_information;
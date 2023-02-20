select order_date as order_date, concat(name, ' (age:', age, ')') as person_information
from person_order join person on person.id = person_order.person_id
order by person_information,  name;


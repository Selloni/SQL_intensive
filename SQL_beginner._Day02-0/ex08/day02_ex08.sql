select gay.name from
   (select person.name, person.id from person
    where gender = 'male' and (address = 'Moscow' or address = 'Samara')) as gay
    left join (select id from menu where pizza_name = 'mushroom pizza' or pizza_name = 'cheese pizza') as name_pizz
on gay.id = name_pizz.id
order by gay.name desc;
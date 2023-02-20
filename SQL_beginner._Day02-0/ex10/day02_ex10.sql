select A.name as person1,
       B.name as person2,
       A.address as common_address
from person as A
join person as B on A.address = B.address
where A.id > B.id
order by  1,2,3;
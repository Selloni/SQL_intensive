create view v_persons_female
    as select * from person where gender = 'female';

-- drop view v_persons_female;
-- select * from v_persons_male;

create view v_persons_male
    as select * from person where gender = 'male';

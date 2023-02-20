select name from v_persons_female
union
select name from  v_persons_male
 order by 1;
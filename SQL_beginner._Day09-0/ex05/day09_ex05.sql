DROP FUNCTION IF EXISTS fnc_persons_male() CASCADE;
DROP FUNCTION IF EXISTS fnc_persons_female() CASCADE;

CREATE OR REPLACE FUNCTION fnc_persons(pgender varchar default 'female')
    RETURNS table
            (
                id      bigint,
                name    varchar,
                age     integer,
                gender  varchar,
                address varchar
            )
AS
$$
SELECT *
FROM person
WHERE gender = pgender
$$
    LANGUAGE sql;

select *
from fnc_persons(pgender := 'male');

select *
from fnc_persons();

-- DROP FUNCTION IF EXISTS fnc_persons(pgender varchar) CASCADE;
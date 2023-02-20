CREATE OR REPLACE FUNCTION fnc_persons_male()
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
WHERE gender = 'male'
$$
    LANGUAGE sql;



CREATE OR REPLACE FUNCTION fnc_persons_female()
    RETURNS table
            (
                id      bigint,
                name    varchar,
                age     integer
            )
AS
$$
SELECT *
FROM person
WHERE gender = 'female'
$$
    LANGUAGE sql;

drop FUNCTION fnc_persons_female();

SELECT id
FROM fnc_persons_male();

SELECT *
FROM fnc_persons_female();

-- DROP FUNCTION IF EXISTS fnc_persons_male() CASCADE;
-- DROP FUNCTION IF EXISTS fnc_persons_female() CASCADE;
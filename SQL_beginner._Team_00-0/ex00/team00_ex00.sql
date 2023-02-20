drop table nodes ;

create table nodes
(
    point1 varchar not null,
    point2 varchar not null,
    cost   integer not null
);

insert into nodes
values ('a', 'b', 10);
insert into nodes
values ('b', 'a', 10);
insert into nodes
values ('b', 'c', 35);
insert into nodes
values ('c', 'b', 35);
insert into nodes
values ('a', 'c', 15);
insert into nodes
values ('c', 'a', 15);
insert into nodes
values ('a', 'd', 20);
insert into nodes
values ('d', 'a', 20);
insert into nodes
values ('d', 'b', 25);
insert into nodes
values ('b', 'd', 25);
insert into nodes
values ('d', 'c', 30);
insert into nodes
values ('c', 'd', 30);

WITH RECURSIVE routes AS (
    SELECT point1 as way,
           point1,
           point2,
           cost
    FROM nodes
    WHERE point1 = 'a'
    UNION ALL
    SELECT parent.way || ',' || child.point1 as trace,
           child.point1,
           child.point2,
           parent.cost + child.cost
    FROM nodes AS child
             INNER JOIN routes AS parent ON child.point1 = parent.point2
    WHERE way NOT LIKE '%' || child.point1 || '%'
)

SELECT cost                AS total_cost,
       '{' || way || ',a}' AS tour
FROM routes
WHERE length(way) = 7
  AND point2 = 'a'
  AND cost = (SELECT MIN(cost)
              FROM routes
              WHERE length(way) = 7
                AND point2 = 'a')
ORDER BY 1, 2;

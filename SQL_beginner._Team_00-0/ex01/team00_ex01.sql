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
  AND (cost = (SELECT MIN(cost)
               FROM routes
               WHERE length(way) = 7
                 AND point2 = 'a')
    OR
       cost = (SELECT MAX(cost)
               FROM routes
               WHERE length(way) = 7
                 AND point2 = 'a')
    )
ORDER BY 1, 2;
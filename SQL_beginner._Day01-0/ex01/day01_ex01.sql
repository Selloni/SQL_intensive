SELECT name as object_name FROM person
    UNION ALL SELECT pizza_name FROM menu
ORDER BY object_name;
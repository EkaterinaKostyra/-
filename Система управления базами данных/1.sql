SELECT
    name_,
    COUNT(IDvisit) as visits_number
FROM fitness_clubs
GROUP BY name_
ORDER BY visits_number DESC
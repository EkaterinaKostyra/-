SELECT
        IDcustomer,
        COUNT(IDvisit) as number_visits
    FROM fitness_clubs
    GROUP BY IDcustomer
    ORDER BY number_visits DESC
    LIMIT 1
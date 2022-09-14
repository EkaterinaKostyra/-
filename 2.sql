SELECT COUNT(distinct blabla.IDcustomer) FROM (
    SELECT
        IDcustomer,
        firstname,
        lastname,
        COUNT(distinct IDclub) as clubs_number
    FROM fitness_clubs
    GROUP BY IDcustomer
    ) as blabla;
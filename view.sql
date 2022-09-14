CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `fitness_clubs` AS
    SELECT 
        `visit`.`IDvisit` AS `IDvisit`,
        `servise`.`IDservise` AS `IDservise`,
        `servise`.`name_` AS `name_`,
        `customer`.`IDcustomer` AS `IDcustomer`,
        `customer`.`lastname` AS `lastname`,
        `customer`.`firstname` AS `firstname`,
        `club`.`IDclub` AS `IDclub`
    FROM
        ((((((`visit`
        LEFT JOIN `servise` ON ((`visit`.`IDservise` = `servise`.`IDservise`)))
        LEFT JOIN `customer` ON ((`customer`.`IDcustomer` = `visit`.`IDcustomer`)))
        LEFT JOIN `subs` ON ((`subs`.`IDcustomer` = `customer`.`IDcustomer`)))
        LEFT JOIN `sotrudniki` ON ((`sotrudniki`.`IDsotrudnika` = `visit`.`IDsotrudnika`)))
        LEFT JOIN `club` ON ((`club`.`IDclub` = `sotrudniki`.`IDclub`)))
        LEFT JOIN `dolzhnost` ON ((`dolzhnost`.`IDdolzhnost` = `sotrudniki`.`IDdolzhnost`)))
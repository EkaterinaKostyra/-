SELECT
IDclub,
COUNT(distinct IDcustomer) as customers_number
FROM fitness_clubs
GROUP BY IDclub
ORDER BY customers_number DESC